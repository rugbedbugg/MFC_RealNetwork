.class final Landroidx/compose/ui/node/CanFocusChecker;
.super Ljava/lang/Object;
.source "NodeKind.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusProperties;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

.field private static canFocusValue:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/node/CanFocusChecker;

    invoke-direct {v0}, Landroidx/compose/ui/node/CanFocusChecker;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanFocus()Z
    .locals 2

    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic getDown()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getDown(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getEnd(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getEnter()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getEnter(Landroidx/compose/ui/focus/FocusProperties;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExit()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getExit(Landroidx/compose/ui/focus/FocusProperties;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLeft()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getLeft(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getNext()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getNext(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPrevious()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getPrevious(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getRight()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getRight(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getStart(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->$default$getUp(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final isCanFocusSet()Z
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final reset()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    sput-object v0, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    return-void
.end method

.method public setCanFocus(Z)V
    .locals 0

    .line 321
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    return-void
.end method
