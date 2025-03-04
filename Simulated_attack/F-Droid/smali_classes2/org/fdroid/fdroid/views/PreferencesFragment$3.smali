.class Lorg/fdroid/fdroid/views/PreferencesFragment$3;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/PreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$3;->this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 581
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$3;->this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    .line 582
    invoke-static {p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->-$$Nest$fgetuseTorCheckPref(Lorg/fdroid/fdroid/views/PreferencesFragment;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
