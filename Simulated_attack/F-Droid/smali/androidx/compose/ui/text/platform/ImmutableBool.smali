.class final Landroidx/compose/ui/text/platform/ImmutableBool;
.super Ljava/lang/Object;
.source "EmojiCompatStatus.kt"

# interfaces
.implements Landroidx/compose/runtime/State;


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/platform/ImmutableBool;->value:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/ImmutableBool;->value:Z

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/ImmutableBool;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
