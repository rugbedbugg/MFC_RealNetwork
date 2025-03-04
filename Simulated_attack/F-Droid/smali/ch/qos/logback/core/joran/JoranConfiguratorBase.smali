.class public abstract Lch/qos/logback/core/joran/JoranConfiguratorBase;
.super Lch/qos/logback/core/joran/GenericConfigurator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/joran/GenericConfigurator;-><init>()V

    return-void
.end method


# virtual methods
.method protected addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 2

    .line 0
    new-instance v0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;

    invoke-direct {v0}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    new-instance v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;

    invoke-direct {v0}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    return-void
.end method

.method protected addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
    .locals 2

    .line 0
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/property"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/substitutionProperty"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/timestamp"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/TimestampAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/TimestampAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/shutdownHook"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ShutdownHookAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/define"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/DefinePropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/conversionRule"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ConversionRuleAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/ConversionRuleAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/statusListener"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/StatusListenerAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/StatusListenerAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender/appender-ref"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderRefAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderRefAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/newRule"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/NewRuleAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/NewRuleAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "*/param"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ParamAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/ParamAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    return-void
.end method

.method protected buildInterpreter()V
    .locals 3

    .line 0
    invoke-super {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->buildInterpreter()V

    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "APPENDER_BAG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    return-object v0
.end method
