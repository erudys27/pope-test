USING Progress.Lang.AppError.

CLASS demo.Arithmetic:

    METHOD PUBLIC INTEGER Add(pInt1 AS INTEGER, pInt2 AS INTEGER):
        RETURN pInt1 + pInt2.
    END METHOD.

    METHOD PUBLIC INTEGER Subtract(pInt1 AS INTEGER, pInt2 AS INTEGER):
        RETURN pInt1 - pInt2.
    END METHOD.

    METHOD PUBLIC INTEGER Multiply(pInt1 AS INTEGER, pInt2 AS INTEGER):
        RETURN pInt1 * pInt2.
    END METHOD.

    METHOD PUBLIC DECIMAL Divide(pInt1 AS INTEGER, pInt2 AS INTEGER):
        IF pInt2 = 0 THEN
            UNDO, THROW NEW AppError("Cannot divide by zero.", 0).
        RETURN pInt1 / pInt2.
    END METHOD.

END CLASS.
