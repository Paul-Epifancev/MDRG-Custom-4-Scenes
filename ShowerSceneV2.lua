do                                                             -- [RU] Открываем изолированную зону памяти. / [EN] Opens an isolated local block scope.
    -- [RU] Массив возможных идентификаторов менеджера в ОЗУ игры.
    -- [EN] Array of potential manager identifiers live in game RAM.
    local POSSIBLE_IDS = { "shower", "room_shower" }
    
    -- [RU] Нативные пути к графическим нодам (элементам) внутри сцены.
    -- [EN] True validated game memory layout path nodes inside the scene framework.
    local PATH_FOREGROUND = "/Foreground/Shower Foreground"     -- [RU] Текстура переднего плана (стекло, капли). / [EN] Foreground asset layer.
    local PATH_CENTER     = "/Center/Shower Wall"               -- [RU] Центральная стена душевой кабины. / [EN] Central shower stall wall.
    local PATH_PROPS      = "/Back/Shower Back Props"           -- [RU] Пропсы окружения (полотенце, смеситель). / [EN] Auxiliary prop attachments.

    local function ExecutionPipeline()                         -- [RU] Объявляем главную функцию конвейера. / [EN] Declares the runtime injection pipeline.
        -- [RU] ПРЕДВАРИТЕЛЬНАЯ ЗАГРУЗКА: Читаем картинки из ZIP-архива мода ОДИН РАЗ до начала цикла!
        -- [EN] PRE-LOAD BUFFER: Load sprites into RAM once to completely eliminate file-IO memory leaks.
        local custom_fore  = ModUtilities.GetAsSprite(CurrentModGuid, "Foreground.png")
        local custom_cent  = ModUtilities.GetAsSprite(CurrentModGuid, "Wall.png")
        local custom_props = ModUtilities.GetAsSprite(CurrentModGuid, "BackgroundProps.png")

        while true do                                          -- [RU] Бесконечный цикл, который караулит загрузку сцены. / [EN] Launches a non-blocking persistent loop.
            local intimacyManager = nil                        -- [RU] Временная ссылка на активный менеджер игры. / [EN] Temporary pointer holder.
            
            -- [RU] ДВУХКОНТУРНЫЙ ПЕРЕБОР: Проверяем оба возможных ID в оперативной памяти.
            -- [EN] TWO-STAGE LOOKUP: Scan across both registered runtime handles in RAM.
            for _, id in ipairs(POSSIBLE_IDS) do
                local mgr = TextureOverriderManager.GetTextureOverriderManager(id)
                if mgr ~= nil then
                    intimacyManager = mgr
                    break                                      -- [RU] Менеджер найден, прерываем перебор. / [EN] Target manager resolved, exiting lookup loop.
                end
            end
            
            -- [RU] Если один из менеджеров сцены успешно перехвачен в ОЗУ.
            -- [EN] If a valid unmanaged manager context is successfully resolved.
            if intimacyManager ~= nil then                     
                -- [RU] Инжектируем наши кастомные картинки напрямую в ячейки памяти игры.
                -- [EN] Injecting verified texture buffers directly into the true nodes framework.
                if custom_fore  ~= nil then intimacyManager:SetSprite(CurrentModGuid, PATH_FOREGROUND, custom_fore) end
                if custom_cent  ~= nil then intimacyManager:SetSprite(CurrentModGuid, PATH_CENTER, custom_cent) end
                if custom_props ~= nil then intimacyManager:SetSprite(CurrentModGuid, PATH_PROPS, custom_props) end

                -- [RU] ОЧИСТКА ПАМЯТИ: Обнуляем локальные ссылки в стеке, защищая VRAM от утечек.
                -- [EN] CLEANUP: Flushes temporary variables data context to secure the heap.
                custom_fore  = nil
                custom_cent  = nil
                custom_props = nil
                
                break                                          -- [RU] Выходим из бесконечного цикла, задача выполнена! / [EN] Instantly breaks the loop to free processor cycles.
            end
            
            coroutine.yield()                                  -- [RU] Пропускаем 1 кадр Unity, чтобы не падал FPS игры. / [EN] Yields thread control for 1 frame tick to preserve FPS.
        end
    end

    -- [RU] Создаем изолированный поток корутины и силой запускаем его в работу MoonSharp.
    -- [EN] Allocates an isolated thread layout inside MoonSharp and fires execution.
    local co = coroutine.create(ExecutionPipeline)             
    coroutine.resume(co)                                       
end                                                            -- [RU] Закрываем изолированную зону памяти. / [EN] Formally seals the root isolated block boundary matrix.
