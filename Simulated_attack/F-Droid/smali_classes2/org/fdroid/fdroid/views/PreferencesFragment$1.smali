.class Lorg/fdroid/fdroid/views/PreferencesFragment$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "PreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/PreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/PreferencesFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$1;->this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    .line 197
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 1

    .line 0
    const/4 v0, -0x1

    return v0
.end method
