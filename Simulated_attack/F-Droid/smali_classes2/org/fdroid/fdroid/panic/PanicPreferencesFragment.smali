.class public Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PanicPreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final PREF_APP:Ljava/lang/String; = "pref_panic_app"


# instance fields
.field private categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

.field private pm:Landroid/content/pm/PackageManager;

.field private prefApp:Landroidx/preference/ListPreference;

.field private prefExit:Landroidx/preference/SwitchPreferenceCompat;

.field private prefHide:Landroidx/preference/SwitchPreferenceCompat;

.field private prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public static synthetic $r8$lambda$Dz432xalyyrOUF7_VSDnrNM_ego(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Yr46SS4FUtNe0UbfanXJk4IIKHo(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$showHideConfirmationDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8jrxR21AKfF8WQW1nIxJ-P6Q6k(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$showHideConfirmationDialog$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nTBksAHYnfD26gmmQM92tM8C5ng(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$showOptInDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nbXIW_mSJp9hmnhLKXGzGEomYqo(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$showPanicApp$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ocvg3hpZbC9vQw59pCfWmihy7t8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$showHideConfirmationDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pY2PXnFkG8V9mijlQhE0zWHbc7w(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->lambda$showOptInDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Linfo/guardianproject/panic/PanicResponder;->setTriggerPackageName(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "NONE"

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    .line 83
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;

    .line 84
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;

    .line 85
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 91
    :goto_0
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    return v0
.end method

.method private synthetic lambda$showHideConfirmationDialog$4(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefExit:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 277
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showHideConfirmationDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic lambda$showHideConfirmationDialog$6(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;

    .line 282
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$showOptInDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->setTriggerPackageName(Landroid/app/Activity;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->getTriggerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method private synthetic lambda$showOptInDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showPanicApp$1(Landroidx/preference/Preference;)Z
    .locals 1

    .line 182
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "market://details?id=info.guardianproject.ripple"

    .line 183
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private showHideConfirmationDialog()V
    .locals 5

    sget v0, Lorg/fdroid/fdroid/R$string;->app_name:I

    .line 268
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/fdroid/fdroid/R$string;->panic_hide_warning_title:I

    .line 270
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lorg/fdroid/fdroid/R$string;->panic_hide_warning_message:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/panic/HidingManager;->getUnhidePin(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    sget v0, Lorg/fdroid/fdroid/R$string;->hiding_calculator:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 271
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lorg/fdroid/fdroid/R$string;->ok:I

    .line 273
    new-instance v2, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lorg/fdroid/fdroid/R$string;->cancel:I

    .line 279
    new-instance v2, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 280
    new-instance v0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lorg/fdroid/fdroid/R$layout;->dialog_app_hiding:I

    .line 284
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showOptInDialog()V
    .locals 7

    .line 227
    new-instance v0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;)V

    .line 232
    new-instance v1, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;)V

    .line 237
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/fdroid/fdroid/R$string;->panic_app_dialog_title:I

    .line 238
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lorg/fdroid/fdroid/R$string;->panic_app_unknown_app:I

    .line 240
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v6, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 244
    invoke-virtual {v6, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 246
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    sget v4, Lorg/fdroid/fdroid/R$string;->panic_app_dialog_message:I

    .line 250
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lorg/fdroid/fdroid/R$string;->allow:I

    .line 252
    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lorg/fdroid/fdroid/R$string;->cancel:I

    .line 253
    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showPanicApp(Ljava/lang/String;)V
    .locals 7

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lorg/fdroid/fdroid/R$string;->panic_app_setting_none:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "NONE"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 169
    invoke-static {v3}, Linfo/guardianproject/panic/PanicResponder;->resolveTriggerApps(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 170
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 171
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/CharSequence;

    .line 175
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    new-array v5, v4, [Ljava/lang/CharSequence;

    .line 176
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 177
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 181
    new-instance v3, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 212
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 213
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 214
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    .line 215
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;

    .line 216
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 217
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showWipeList()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 220
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2}, Linfo/guardianproject/panic/PanicResponder;->setTriggerPackageName(Landroid/app/Activity;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v2}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 194
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    sget v0, Lorg/fdroid/fdroid/R$string;->panic_app_setting_summary:I

    .line 195
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_cancel:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 199
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$attr;->appListItem:I

    .line 201
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 203
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 204
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    .line 207
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showWipeList()V

    :goto_2
    return-void
.end method

.method private showWipeList()V
    .locals 8

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->getPanicWipeSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    .line 113
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 114
    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    .line 115
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    const/4 v4, 0x1

    .line 118
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 119
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    new-instance v5, Lorg/fdroid/fdroid/panic/DestructivePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/fdroid/fdroid/panic/DestructivePreference;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 123
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    .line 124
    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :try_start_0
    iget-object v6, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 126
    invoke-virtual {v6, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 127
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 129
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/fdroid/fdroid/R$drawable;->ic_add_circle_outline:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/fdroid/fdroid/R$color;->swap_light_grey_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    sget v2, Lorg/fdroid/fdroid/R$string;->panic_add_apps_to_uninstall:I

    .line 139
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 140
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    .line 141
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory$-CC;->$default$getDefaultViewModelCreationExtras(Landroidx/lifecycle/HasDefaultViewModelProviderFactory;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    sget p1, Lorg/fdroid/fdroid/R$xml;->preferences_panic:I

    .line 55
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    const-string p1, "pref_panic_exit"

    .line 58
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefExit:Landroidx/preference/SwitchPreferenceCompat;

    const-string p1, "pref_panic_app"

    .line 59
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    const-string p1, "pref_panic_hide"

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    sget p2, Lorg/fdroid/fdroid/R$string;->panic_hide_title:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_name:I

    .line 61
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "pref_panic_reset_repos"

    .line 62
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefResetRepos:Landroidx/preference/SwitchPreferenceCompat;

    const-string p1, "pref_panic_apps_to_uninstall"

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->checkForDisconnectIntent(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->getConnectIntentSender(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Linfo/guardianproject/panic/PanicResponder;->getTriggerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showOptInDialog()V

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefApp:Landroidx/preference/ListPreference;

    .line 78
    new-instance p2, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->getTriggerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_panic_hide"

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showHideConfirmationDialog()V

    :cond_0
    const-string v0, "pref_panic_exit"

    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 159
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->prefHide:Landroidx/preference/SwitchPreferenceCompat;

    .line 160
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->categoryAppsToUninstall:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicPreferencesFragment;->showWipeList()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 148
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
