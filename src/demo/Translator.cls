USING PauliusKup.Translation.ITranslationService.
USING PauliusKup.Translation.TranslationService.
USING PauliusKup.Translation.TranslationServiceParam.
USING PauliusKup.Language.Language.

CLASS demo.Translator:

    DEFINE PRIVATE VARIABLE oService AS ITranslationService NO-UNDO.

    CONSTRUCTOR PUBLIC Translator():
        oService = NEW TranslationService().
    END CONSTRUCTOR.

    METHOD PUBLIC CHARACTER Translate(pcKey AS CHARACTER, pcDefault AS CHARACTER, pcIso AS CHARACTER):
        DEFINE VARIABLE oLanguage AS Language                NO-UNDO.
        DEFINE VARIABLE oParam    AS TranslationServiceParam NO-UNDO.

        oLanguage = NEW Language().
        oLanguage:cISO = pcIso.

        oParam = NEW TranslationServiceParam().
        oParam:cKey = pcKey.
        oParam:cDefaultString = pcDefault.
        oParam:oLanguage = oLanguage.

        RETURN oService:GetTransaltionMessage(oParam).
    END METHOD.

END CLASS.
