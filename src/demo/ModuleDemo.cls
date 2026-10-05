USING PauliusKup.DomainFramework.Example.ExampleModule.IModule.
USING PauliusKup.DomainFramework.Example.ExampleModule.Module.
USING PauliusKup.DomainFramework.Example.ExampleModule.ModuleRepository.

CLASS demo.ModuleDemo:

    DEFINE PRIVATE VARIABLE oModule AS IModule NO-UNDO.

    CONSTRUCTOR PUBLIC ModuleDemo():
        oModule = NEW Module(NEW ModuleRepository()).
    END CONSTRUCTOR.

    METHOD PUBLIC LOGICAL BuiltOk():
        RETURN VALID-OBJECT(oModule).
    END METHOD.

END CLASS.
