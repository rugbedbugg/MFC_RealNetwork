.class Lorg/fdroid/fdroid/privileged/views/TabsAdapter$DummyTabFactory;
.super Ljava/lang/Object;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/views/TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter$DummyTabFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 64
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter$DummyTabFactory;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p1
.end method
