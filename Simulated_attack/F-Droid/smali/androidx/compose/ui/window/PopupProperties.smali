.class public final Landroidx/compose/ui/window/PopupProperties;
.super Ljava/lang/Object;
.source "AndroidPopup.android.kt"


# instance fields
.field private final clippingEnabled:Z

.field private final dismissOnBackPress:Z

.field private final dismissOnClickOutside:Z

.field private final excludeFromSystemGesture:Z

.field private final focusable:Z

.field private final securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

.field private final usePlatformDefaultWidth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V
    .locals 9

    const-string v0, "securePolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 128
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x1

    if-eqz p8, :cond_1

    move p8, v0

    goto :goto_0

    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    .line 125
    sget-object p4, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_3
    move-object v2, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v0, p6

    :goto_3
    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v1

    move-object p6, v2

    move p7, v3

    move p8, v0

    .line 121
    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method

.method public constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V
    .locals 1

    const-string v0, "securePolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    iput-boolean p2, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    iput-boolean p3, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    iput-object p4, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    iput-boolean p5, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    iput-boolean p6, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    iput-boolean p7, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/window/PopupProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    .line 142
    check-cast p1, Landroidx/compose/ui/window/PopupProperties;

    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 143
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    .line 144
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 145
    iget-object v3, p1, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    .line 146
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    .line 147
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    .line 148
    iget-boolean p1, p1, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getClippingEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    return v0
.end method

.method public final getDismissOnBackPress()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    return v0
.end method

.method public final getDismissOnClickOutside()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    return v0
.end method

.method public final getExcludeFromSystemGesture()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    return v0
.end method

.method public final getFocusable()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    return v0
.end method

.method public final getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    return-object v0
.end method

.method public final getUsePlatformDefaultWidth()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 154
    invoke-static {v0}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    .line 155
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 156
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    .line 157
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    .line 159
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    .line 160
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    .line 161
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
