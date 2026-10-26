-- Entrada en Ajustes > Add-Ons (solo si LibAddonMenu-2.0 está instalada).

local OA = OmniAura
local L = OA.L
local S = {}
OA.Settings = S

local DONATION_DEFAULT = 10000

-- Desde otro megaservidor el correo no llegaría al autor.
function S.CanDonate()
    return GetWorldName() == OA.authorServer
end

-- Abre el correo con el autor, el asunto y el oro ya rellenados; el jugador
-- revisa la cantidad y decide si lo envía.
function S.ComposeDonation()
    if IsUnitInCombat("player") then
        OA.Print(L.DONATE_COMBAT)
        return
    end
    local subject = string.format(L.DONATE_SUBJECT, OA.version)

    if IsInGamepadPreferredMode() then
        MAIL_MANAGER_GAMEPAD:GetSend():ComposeMailTo(OA.author, subject)
        return
    end

    SCENE_MANAGER:Show("mailSend")
    zo_callLater(function()
        ZO_MailSendToField:SetText(OA.author)
        ZO_MailSendSubjectField:SetText(subject)
        QueueMoneyAttachment(DONATION_DEFAULT)
        ZO_MailSendSendCurrency:OnBeginInput()
    end, 250)
end

---------------------------------------------------------------------------
-- Ventana de bienvenida (primera instalación) o de novedades (nueva versión)
---------------------------------------------------------------------------
local WELCOME_DIALOG = "OMNIAURA_WELCOME"

local function RegisterWelcomeDialog()
    ZO_Dialogs_RegisterCustomDialog(WELCOME_DIALOG, {
        title = { text = "<<1>>" },
        mainText = { text = "<<1>>" },
        buttons = {
            { text = L.OPEN_EDITOR, callback = function() OA.Editor.Show() end },
            { text = GetString(SI_DIALOG_CLOSE) },
        },
    })
end

-- Se llama al entrar al mundo. Solo muestra algo si es la primera vez o si cambió la versión.
function S.ShowWelcomeIfNeeded()
    local sv = OA.sv
    local last = sv.lastVersion
    if last == OA.version then return end
    sv.lastVersion = OA.version

    local title, text
    -- Sin versión guardada pero con auras: viene de una versión anterior a este aviso.
    if last == nil and next(sv.auras) == nil then
        title, text = L.WELCOME_TITLE, L.WELCOME_TEXT
    else
        title, text = string.format(L.UPDATE_TITLE, OA.version), L.CHANGELOG
    end
    ZO_Dialogs_ShowDialog(WELCOME_DIALOG, nil, { titleParams = { title }, mainTextParams = { text } })
end

function S.Init()
    RegisterWelcomeDialog()

    local LAM = LibAddonMenu2
    if not LAM then return end

    local panelName = "OmniAuraOptions"
    LAM:RegisterAddonPanel(panelName, {
        type = "panel",
        name = "OmniAura",
        displayName = "|c00C8FFOmni|rAura",
        author = OA.author,
        version = OA.version,
        registerForRefresh = true,
    })

    local options = {
        {
            type = "description",
            text = L.SETTINGS_DESC,
        },
        {
            type = "button",
            name = L.OPEN_EDITOR,
            width = "half",
            func = function() OA.Editor.Show() end,
        },
    }

    -- Solo en el megaservidor del autor.
    if S.CanDonate() then
        options[#options + 1] = { type = "header", name = L.DONATE_HEADER }
        options[#options + 1] = { type = "description", text = string.format(L.DONATE_DESC, OA.author) }
        options[#options + 1] = {
            type = "button",
            name = L.DONATE_BUTTON,
            width = "half",
            func = S.ComposeDonation,
        }
    end

    LAM:RegisterOptionControls(panelName, options)
end
