.class public abstract Landroidx/compose/ui/platform/coreshims/ViewCompatShims;
.super Ljava/lang/Object;
.source "ViewCompatShims.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api30Impl;,
        Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api29Impl;,
        Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api26Impl;
    }
.end annotation


# direct methods
.method public static getAutofillId(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 150
    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api26Impl;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentCaptureSession(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 121
    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api29Impl;->getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 125
    :cond_0
    invoke-static {v0, p0}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->toContentCaptureSessionCompat(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static setImportantForContentCapture(Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 100
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api30Impl;->setImportantForContentCapture(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
