USING demo.StringUtils.

CLASS demo.StringUtils:

    METHOD PUBLIC STATIC CHARACTER Reverse(pInput AS CHARACTER):
        DEFINE VARIABLE cResult AS CHARACTER NO-UNDO INITIAL "".
        DEFINE VARIABLE iChar   AS INTEGER   NO-UNDO.

        DO iChar = LENGTH(pInput) TO 1 BY -1:
            cResult = cResult + SUBSTRING(pInput, iChar, 1).
        END.

        RETURN cResult.
    END METHOD.

    METHOD PUBLIC STATIC LOGICAL IsPalindrome(pInput AS CHARACTER):
        RETURN LC(pInput) = LC(StringUtils:Reverse(pInput)).
    END METHOD.

    METHOD PUBLIC STATIC CHARACTER Capitalize(pInput AS CHARACTER):
        IF pInput = "" OR pInput = ? THEN
            RETURN pInput.

        RETURN CAPS(SUBSTRING(pInput, 1, 1)) + LC(SUBSTRING(pInput, 2)).
    END METHOD.

END CLASS.
