.class public final Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;
.super Ljava/lang/Object;
.source "HapticFeedbackType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLongPress-5zf0vsI()I
    .locals 1

    .line 40
    sget-object v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->INSTANCE:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;

    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->getLongPress-5zf0vsI()I

    move-result v0

    return v0
.end method

.method public final getTextHandleMove-5zf0vsI()I
    .locals 1

    .line 46
    sget-object v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->INSTANCE:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;

    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->getTextHandleMove-5zf0vsI()I

    move-result v0

    return v0
.end method
