.class public abstract Landroidx/compose/foundation/text/KeyMapping_androidKt;
.super Ljava/lang/Object;
.source "KeyMapping.android.kt"


# static fields
.field private static final platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroidx/compose/foundation/text/KeyMapping_androidKt$platformDefaultKeyMapping$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/KeyMapping_androidKt$platformDefaultKeyMapping$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-void
.end method

.method public static final getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-object v0
.end method
