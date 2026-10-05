USING PauliusKup.Language.ILanguageService.
USING PauliusKup.Language.LanguageService.
USING PauliusKup.Language.LanguageRepository.

CLASS demo.LanguageChecker:

    DEFINE PRIVATE VARIABLE oService AS ILanguageService NO-UNDO.

    CONSTRUCTOR PUBLIC LanguageChecker():
        oService = NEW LanguageService(NEW LanguageRepository()).
    END CONSTRUCTOR.

    METHOD PUBLIC LOGICAL ExistsByIso(pcIso AS CHARACTER):
        RETURN oService:ExistByISO(pcIso).
    END METHOD.

END CLASS.
