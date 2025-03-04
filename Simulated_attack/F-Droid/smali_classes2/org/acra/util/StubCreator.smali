.class public final Lorg/acra/util/StubCreator;
.super Ljava/lang/Object;
.source "StubCreator.kt"


# static fields
.field public static final INSTANCE:Lorg/acra/util/StubCreator;


# direct methods
.method public static synthetic $r8$lambda$yR0IutVa38I80g2HNqDtNYQgroA(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/acra/util/StubCreator;->createErrorReporterStub$lambda$1(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/acra/util/StubCreator;

    invoke-direct {v0}, Lorg/acra/util/StubCreator;-><init>()V

    sput-object v0, Lorg/acra/util/StubCreator;->INSTANCE:Lorg/acra/util/StubCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createErrorReporterStub$lambda$1(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 12
    invoke-static {}, Lorg/acra/ACRA;->isACRASenderServiceProcess()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "in SenderService process"

    goto :goto_0

    :cond_0
    const-string p0, "before ACRA#init (if you did call #init, check if your configuration is valid)"

    .line 15
    :goto_0
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorReporter#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". THIS CALL WILL BE IGNORED!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-interface {p2, v0, p0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final createStub(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 3

    const-string v0, "interfaceClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lorg/acra/util/StubCreator;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createErrorReporterStub()Lorg/acra/ErrorReporter;
    .locals 2

    .line 11
    new-instance v0, Lorg/acra/util/StubCreator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/acra/util/StubCreator$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lorg/acra/ErrorReporter;

    .line 18
    invoke-static {v1, v0}, Lorg/acra/util/StubCreator;->createStub(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ErrorReporter;

    return-object v0
.end method
