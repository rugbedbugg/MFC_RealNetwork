.class public final enum Landroidx/work/DirectExecutor;
.super Ljava/lang/Enum;
.source "DirectExecutor.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/DirectExecutor;

.field public static final enum INSTANCE:Landroidx/work/DirectExecutor;


# direct methods
.method private static final synthetic $values()[Landroidx/work/DirectExecutor;
    .locals 3

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/work/DirectExecutor;

    const/4 v1, 0x0

    sget-object v2, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Landroidx/work/DirectExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-static {}, Landroidx/work/DirectExecutor;->$values()[Landroidx/work/DirectExecutor;

    move-result-object v0

    sput-object v0, Landroidx/work/DirectExecutor;->$VALUES:[Landroidx/work/DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/DirectExecutor;
    .locals 1

    .line 0
    const-class v0, Landroidx/work/DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/DirectExecutor;

    return-object p0
.end method

.method public static values()[Landroidx/work/DirectExecutor;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/DirectExecutor;->$VALUES:[Landroidx/work/DirectExecutor;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "DirectExecutor"

    return-object v0
.end method
