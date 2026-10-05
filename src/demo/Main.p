USING demo.Arithmetic.
USING demo.Greeter.
USING demo.Person.
USING demo.StringUtils.
USING demo.Translator.
USING demo.LanguageChecker.
USING demo.ModuleDemo.

DEFINE VARIABLE oCalc            AS Arithmetic      NO-UNDO.
DEFINE VARIABLE oPerson          AS Person          NO-UNDO.
DEFINE VARIABLE oGreeter         AS Greeter         NO-UNDO.
DEFINE VARIABLE oTranslator      AS Translator      NO-UNDO.
DEFINE VARIABLE oLanguageChecker AS LanguageChecker NO-UNDO.
DEFINE VARIABLE oModuleDemo      AS ModuleDemo      NO-UNDO.

oCalc = NEW Arithmetic().
MESSAGE "3 + 4 =" oCalc:Add(3, 4) SKIP
        "10 - 6 =" oCalc:Subtract(10, 6) SKIP
        "5 * 6 =" oCalc:Multiply(5, 6)
    VIEW-AS ALERT-BOX INFO.

oPerson = NEW Person("Ada", "Lovelace", DATE(12, 10, 1815)).
MESSAGE oPerson:GetFullName() "is" oPerson:GetAge() "years old"
    VIEW-AS ALERT-BOX INFO.

MESSAGE StringUtils:Reverse("progress") SKIP
        "'level' is palindrome:" StringUtils:IsPalindrome("level")
    VIEW-AS ALERT-BOX INFO.

oGreeter = NEW Greeter("Hello &1, you are &2 years old!").
oGreeter:Add(oPerson:FirstName).
oGreeter:Add(oPerson:GetAge()).
MESSAGE oGreeter:GetString()
    VIEW-AS ALERT-BOX INFO.

oTranslator = NEW Translator().
MESSAGE oTranslator:Translate("greeting", "Hello, world!", "en")
    VIEW-AS ALERT-BOX INFO.

oLanguageChecker = NEW LanguageChecker().
MESSAGE "Language 'en' exists:" oLanguageChecker:ExistsByIso("en")
    VIEW-AS ALERT-BOX INFO.

oModuleDemo = NEW ModuleDemo().
MESSAGE "DomainFramework module built:" oModuleDemo:BuiltOk()
    VIEW-AS ALERT-BOX INFO.

DELETE OBJECT oCalc.
DELETE OBJECT oPerson.
DELETE OBJECT oGreeter.
DELETE OBJECT oTranslator.
DELETE OBJECT oLanguageChecker.
DELETE OBJECT oModuleDemo.
