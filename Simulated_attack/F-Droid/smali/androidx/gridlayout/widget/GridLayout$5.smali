.class final Landroidx/gridlayout/widget/GridLayout$5;
.super Landroidx/gridlayout/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/gridlayout/widget/GridLayout;->createSwitchingAlignment(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field final synthetic val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;


# direct methods
.method constructor <init>(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)V
    .locals 0

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2778
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 2

    .line 2788
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2790
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method getDebugString()Ljava/lang/String;
    .locals 2

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SWITCHING[L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 2

    .line 2781
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2783
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result p1

    return p1
.end method
