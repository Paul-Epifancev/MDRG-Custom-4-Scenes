do                                                             -- [RU] Открываем изолированную зону памяти. / [EN] Opens an isolated local block scope.
    local POSSIBLE_IDS = { "", "" }                            -- [RU] Массив потенциальных ID менеджеров раздевалки/примерочной в ОЗУ. / [EN] Array of potential changing room manager identifiers live in RAM.
    local PATH_BACKGROUND = "/Background"                      -- [RU] Системный путь к ноде заднего фона примерочной. / [EN] Layout path node for the changing room backdrop.

    local function ExecutionPipeline()                         -- [RU] Объявляем главную функцию конвейера инжекции. / [EN] Declares the runtime injection pipeline function.
        local custom_bg = ModUtilities.GetAsSprite(CurrentModGuid, "AnnalieChangingRoom.png") -- [RU] ОПТИМИЗАЦИЯ: Читаем спрайт раздевалки с диска ОДИН РАЗ до цикла! / [EN] OPTIMIZATION: Load changing room sprite into RAM once before loop!

        while true do                                          -- [RU] Бесконечный цикл, который караулит прогрузку сцены. / [EN] Launches a non-blocking persistent tracking loop.
            local intimacyManager = nil                        -- [RU] Временная ссылка для хранения перехваченного менеджера. / [EN] Temporary pointer holder for resolved manager.
            
            for _, id in ipairs(POSSIBLE_IDS) do               -- [RU] Цикл перебора зарегистрированных ID менеджеров. / [EN] Iterator loop to scan across potential manager handle strings.
                local mgr = TextureOverriderManager.GetTextureOverriderManager(id) -- [RU] Опрашиваем кэш на наличие активного инстанса оверрайдера. / [EN] Checks the live RAM heap for an active manager instance.
                if mgr ~= nil then                             -- [RU] Если менеджер ответил в оперативной памяти: / [EN] If a valid unmanaged manager context is successfully resolved:
                    intimacyManager = mgr                      -- [RU] Записываем указатель на найденный менеджер. / [EN] Assign the valid pointer to our target holder variable.
                    break                                      -- [RU] Прерываем локальный перебор, цель достигнута. / [EN] Target manager resolved, instantly exiting lookup loop.
                end                                            -- [RU] Закрываем блок проверки условия. / [EN] Ends the conditional check scope.
            end                                                -- [RU] Закрываем цикл перебора идентификаторов. / [EN] Ends the identifier lookup loop scope.
            
            if intimacyManager ~= nil then                     -- [RU] Проверяем, состоялась ли сделка перехвата: / [EN] Execution check: evaluate if the manager structure is secured:
                if custom_bg ~= nil then                       -- [RU] Проверяем, успешно ли загружен кастомный спрайт из текстуры: / [EN] Safety check: ensure custom sprite buffer is valid:
                    intimacyManager:SetSprite(CurrentModGuid, PATH_BACKGROUND, custom_bg) -- [RU] Силой подменяем спрайт заднего фона в ячейке игры. / [EN] Force injecting backdrop texture asset directly into the node.
                end                                            -- [RU] Закрываем блок проверки спрайта. / [EN] Ends the sprite validation block.

                custom_bg = nil                                -- [RU] ОЧИСТКА: Обнуляем ссылку на фон для защиты от утечек VRAM. / [EN] CLEANUP: Flush background sprite data reference to secure heap.
                break                                          -- [RU] Выходим из бесконечного цикла, задача выполнена на 100%! / [EN] Instantly breaks the loop to free processor cycles.
            end                                                -- [RU] Закрываем блок проверки успешной инжекции. / [EN] Ends the injection execution verification block.
            
            coroutine.yield()                                  -- [RU] Пропускаем 1 кадр Unity, чтобы сохранить FPS игры. / [EN] Yields thread control for 1 frame tick to preserve game FPS.
        end                                                    -- [RU] Закрываем тело бесконечного цикла мониторинга. / [EN] Closes the persistent loop definition.
    end                                                        -- [RU] Закрываем тело главной функции конвейера. / [EN] Closes the core pipeline execution logic.

    local co = coroutine.create(ExecutionPipeline)             -- [RU] Создаем изолированный поток корутины внутри MoonSharp. / [EN] Allocates an isolated thread frame layout inside MoonSharp.
    coroutine.resume(co)                                       -- [RU] Силой запускаем наш бессмертный скрипт в рантайм. / [EN] Fires the first execution tick, locking the patch live.
end                                                            -- [RU] Закрываем общую изолированную зону памяти. / [EN] Formally seals the root isolated block boundary matrix.
