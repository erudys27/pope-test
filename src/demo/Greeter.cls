USING PauliusKup.Util.Formatter.MyFormatter.
USING PauliusKup.Util.Substitutable.ASubstitutable.

CLASS demo.Greeter INHERITS ASubstitutable:

    CONSTRUCTOR PUBLIC Greeter(pcTemplate AS CHARACTER):
        SetFormatter(MyFormatter:GetInstance()).
        SetText(pcTemplate).
    END CONSTRUCTOR.

END CLASS.
