.class Lorg/fdroid/fdroid/views/PreferencesFragment$2;
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

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$2;->this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 563
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$2;->this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    .line 564
    invoke-static {p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->-$$Nest$fgetenableProxyCheckPref(Lorg/fdroid/fdroid/views/PreferencesFragment;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment$2;->this$0:Lorg/fdroid/fdroid/views/PreferencesFragment;

    .line 565
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 566
    invoke-static {p1}, Linfo/guardianproject/netcipher/proxy/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 567
    invoke-static {p1}, Linfo/guardianproject/netcipher/proxy/OrbotHelper;->getOrbotInstallIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x1234

    .line 568
    invoke-virtual {p1, p2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
