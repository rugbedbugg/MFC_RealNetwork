.class public final synthetic Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/PreferencesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda6;->f$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    return-void
.end method


# virtual methods
.method public final seekBarUpdated(I)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda6;->f$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->$r8$lambda$whUN3x0LB8Y67eYuuBBrsO1o90M(Lorg/fdroid/fdroid/views/PreferencesFragment;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
