-- =========================================================================================
--  [RU] ПРОЕКТ «ЭЛЬБРУС»: ОПТИМИЗИРОВАННАЯ МИССИОНЕРСКАЯ СЦЕНА (ДВУЯЗЫЧНЫЙ ВАРИАНТ)
--  [EN] PROJECT "ELBRUS": OPTIMIZED MISSIONARY SCENE OVERRIDE (BILINGUAL RELEASE)
-- =========================================================================================

do                                                             -- [RU] Открываем изолированную зону памяти. / [EN] Opens an isolated local block scope.
    local MANAGER_ID = "room_missionary"                       -- [RU] Истинный системный ID миссионерской позы из дампов. / [EN] True verified hardware string identifier.
    
    -- [RU] Нативные пути к элементам (нодам) внутри сцены / [EN] Sets the true validated game memory layout path nodes
    local PATH_BACKGROUND = "/Missionary Image"                 -- [RU] Путь к текстуре основного заднего фона. / [EN] Target offset for the main background scenery asset.
    local PATH_LIGHTING   = "/Light Multiply"                   -- [RU] Путь к шейдерной маске интимного света. / [EN] Target offset for global shader color multiplication layer.

    local function ExecutionPipeline()                         -- [RU] Объявляем главную функцию конвейера. / [EN] Declares the runtime injection pipeline.
        -- [RU] ОПТИМИЗАЦИЯ: Читаем картинки с диска ОДИН РАЗ до цикла! / [EN] BUFFER: Load sprites into RAM once to completely eliminate file-IO memory leaks.
        local custom_bg    = ModUtilities.GetAsSprite(CurrentModGuid, "room_couch_missionary.png")
        local custom_light = ModUtilities.GetAsSprite(CurrentModGuid, "MissionaryLight.png")

        while true do                                          -- [RU] Бесконечный цикл, который караулит сцену. / [EN] Launches a non-blocking persistent loop.
            -- [RU] Хватаем живой указатель на менеджер миссионерки из ОЗУ / [EN] Grabs direct pointer reference to the unmanaged C++ manager instance.
            local intimacyManager = TextureOverriderManager.GetTextureOverriderManager(MANAGER_ID)
            
            -- [RU] Если сцена активировалась и менеджер успешно перехвачен / [EN] If the missionary scene initialized and the manager is alive in RAM
            if intimacyManager ~= nil then                     
                -- [RU] Инжектируем наши готовые текстуры прямо в ячейки игры / [EN] Injecting verified texture buffers directly into the true nodes framework
                if custom_bg    ~= nil then intimacyManager:SetSprite(CurrentModGuid, PATH_BACKGROUND, custom_bg) end
                if custom_light ~= nil then intimacyManager:SetSprite(CurrentModGuid, PATH_LIGHTING, custom_light) end -- [RU] Заливаем интимную маску света. / [EN] Enforces custom lighting filter.

                -- [RU] ОЧИСТКА ПАМЯТИ: Обнуляем локальные ссылки в стеке / [EN] CLEANUP: Flushes temporary variables data context to secure the heap
                custom_bg    = nil
                custom_light = nil
                
                break                                          -- [RU] Выходим из бесконечного цикла, задача выполнена! / [EN] Instantly breaks the loop to free processor cycles.
            end
            
            coroutine.yield()                                  -- [RU] Пропускаем 1 кадр, чтобы не падал FPS. / [EN] Yields thread control for 1 frame tick to preserve FPS.
        end
    end

    local co = coroutine.create(ExecutionPipeline)             -- [RU] Создаем поток корутины внутри MoonSharp. / [EN] Allocates an isolated thread frame layout.
    coroutine.resume(co)                                       -- [RU] Запускаем наш бессмертный скрипт в работу! / [EN] Fires execution tick, locking the patch live.
end                                                            -- [RU] Закрываем общую зону памяти. / [EN] Formally seals the root isolated block boundary matrix.
