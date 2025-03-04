.class public Lorg/fdroid/fdroid/views/PreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final REQUEST_INSTALL_ORBOT:I = 0x1234

.field private static final SUMMARIES_TO_UPDATE:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PreferencesFragment"

.field private static final UPDATE_INTERVAL_NAMES:[I


# instance fields
.field private final aboutPrefClickedListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private currentKeepCacheTime:J

.field private enableProxyCheckPref:Landroidx/preference/SwitchPreferenceCompat;

.field private glideRequestManager:Lcom/bumptech/glide/RequestManager;

.field private installHistoryPref:Landroidx/preference/Preference;

.field private ipfsGateways:Landroidx/preference/Preference;

.field private keepInstallHistoryPref:Landroidx/preference/SwitchPreferenceCompat;

.field private nextUpdateCheck:J

.field private otherPrefGroup:Landroidx/preference/PreferenceGroup;

.field private overDataSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

.field private overWifiSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

.field private final proxyEnabledChangedListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

.field private sendToFDroidMetricsPref:Landroidx/preference/SwitchPreferenceCompat;

.field private topScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

.field private updateAutoDownloadPref:Landroidx/preference/Preference;

.field private updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

.field private useDnsCacheCheckPref:Landroidx/preference/SwitchPreferenceCompat;

.field private final useTorChangedListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private useTorCheckPref:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public static synthetic $r8$lambda$5vMBJBFQeaSrgkMa695hh4sFFAo(Lorg/fdroid/fdroid/views/PreferencesFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->lambda$new$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BtggccIHnaUHXSBvJeXcda5H3ow(Lorg/fdroid/fdroid/views/PreferencesFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->lambda$initAutoFetchUpdatesPreference$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OdXRu2D38G-Pt11nQKCh_RwFe-c(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->lambda$initPrivilegedInstallerPreference$3(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RS7Nmgujc1QWOM3bfa9POuu8Pqw(Lorg/fdroid/fdroid/views/PreferencesFragment;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->lambda$onViewCreated$0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8r33Sz5gwHVquZxqtk-y5Xpr-E(Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->lambda$new$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hU4J5mgr9tn_9QwBTVN0Nq-Q3YY(Lorg/fdroid/fdroid/views/PreferencesFragment;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->getNetworkSeekBarSummary(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$whUN3x0LB8Y67eYuuBBrsO1o90M(Lorg/fdroid/fdroid/views/PreferencesFragment;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->getUpdateIntervalSeekbarSummary(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenableProxyCheckPref(Lorg/fdroid/fdroid/views/PreferencesFragment;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->enableProxyCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseTorCheckPref(Lorg/fdroid/fdroid/views/PreferencesFragment;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useTorCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 0
    const-string v0, "overWifi"

    const-string v1, "overData"

    const-string v2, "updateIntervalSeekBarPosition"

    const-string v3, "updateNotify"

    const-string v4, "showAntiFeatures"

    const-string v5, "incompatibleVersions"

    const-string v6, "theme"

    const-string v7, "usePureBlackDarkTheme"

    const-string v8, "ignoreTouchscreen"

    const-string v9, "localRepoName"

    const-string v10, "language"

    const-string v11, "keepCacheFor"

    const-string v12, "expert"

    const-string v13, "privilegedInstaller"

    const-string v14, "enableProxy"

    const-string v15, "proxyHost"

    const-string v16, "proxyPort"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/views/PreferencesFragment;->SUMMARIES_TO_UPDATE:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_never:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_2w:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_1w:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_1d:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_12h:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_4h:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lorg/fdroid/fdroid/R$string;->interval_1h:I

    aput v2, v0, v1

    sput-object v0, Lorg/fdroid/fdroid/views/PreferencesFragment;->UPDATE_INTERVAL_NAMES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->nextUpdateCheck:J

    .line 466
    new-instance v0, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->aboutPrefClickedListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 559
    new-instance v0, Lorg/fdroid/fdroid/views/PreferencesFragment$2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$2;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useTorChangedListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 577
    new-instance v0, Lorg/fdroid/fdroid/views/PreferencesFragment$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$3;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->proxyEnabledChangedListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private checkSummary(Ljava/lang/String;I)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method private enableUpdateInterval()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overWifiSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 256
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overDataSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 257
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    const/4 v1, 0x0

    .line 258
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    sget-object v2, Lorg/fdroid/fdroid/views/PreferencesFragment;->UPDATE_INTERVAL_NAMES:[I

    .line 259
    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    const/4 v1, 0x1

    .line 261
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 262
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->getUpdateIntervalSeekbarSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private entrySummary(Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getNetworkSeekBarSummary(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->over_network_never_summary:I

    .line 240
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$string;->over_network_on_demand_summary:I

    .line 242
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget p1, Lorg/fdroid/fdroid/R$string;->over_network_always_summary:I

    .line 244
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 246
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown seekbar position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getUpdateIntervalSeekbarSummary(I)Ljava/lang/String;
    .locals 12

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/fdroid/fdroid/views/PreferencesFragment;->UPDATE_INTERVAL_NAMES:[I

    .line 268
    aget v1, v1, p1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->nextUpdateCheck:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "\n"

    if-gez v3, :cond_0

    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/fdroid/fdroid/R$string;->auto_update_time_past:I

    .line 271
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_1

    .line 273
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->nextUpdateCheck:J

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    const/high16 v11, 0x40000

    .line 274
    invoke-static/range {v5 .. v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p1

    sget v1, Lorg/fdroid/fdroid/R$string;->auto_update_time:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 276
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/fdroid/fdroid/R$string;->repositories_last_update_never:I

    .line 279
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lorg/fdroid/fdroid/R$string;->auto_update_time:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 280
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initAutoFetchUpdatesPreference()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateAutoDownloadPref:Landroidx/preference/Preference;

    .line 533
    new-instance v1, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 540
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->canBeUsed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateAutoDownloadPref:Landroidx/preference/Preference;

    sget v1, Lorg/fdroid/fdroid/R$string;->update_auto_install:I

    .line 541
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateAutoDownloadPref:Landroidx/preference/Preference;

    sget v1, Lorg/fdroid/fdroid/R$string;->update_auto_install_summary:I

    .line 542
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method private initPrivilegedInstallerPreference()V
    .locals 4

    const-string v0, "privilegedInstaller"

    .line 489
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isPrivilegedInstallerEnabled()Z

    move-result v1

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isExtensionInstalledCorrectly(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 510
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 511
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 512
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 513
    new-instance v1, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/SwitchPreferenceCompat;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->otherPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 508
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private initUseDnsCachePreference()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useDnsCacheCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 547
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useDnsCacheCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 548
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isDnsCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private initUseTorPreference(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useTorCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 555
    invoke-static {p1}, Linfo/guardianproject/netcipher/proxy/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useTorCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 556
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isTorEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$initAutoFetchUpdatesPreference$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 534
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdatesAndInstall()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$initPrivilegedInstallerPreference$3(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 514
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 515
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "privilegedInstaller"

    if-eqz p0, :cond_0

    .line 516
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 518
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 520
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 1

    .line 475
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BOOM!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$2(Landroidx/preference/Preference;)Z
    .locals 4

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$layout;->about:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v3, Lorg/fdroid/fdroid/R$id;->version:I

    .line 472
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 473
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    new-instance v2, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 478
    :cond_0
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$string;->ok:I

    .line 480
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onViewCreated$0(Ljava/lang/Long;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->nextUpdateCheck:J

    const-string p1, "updateIntervalSeekBarPosition"

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateSummary(Ljava/lang/String;Z)V

    return-void
.end method

.method private setFDroidMetricsWorker()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->sendToFDroidMetricsPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 443
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->sendToFDroidMetricsPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->schedule(Landroid/content/Context;)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->cancel(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private setNetworkSeekBarSummary(Landroidx/preference/SeekBarPreference;)V
    .locals 1

    .line 251
    invoke-virtual {p1}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result v0

    .line 252
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->getNetworkSeekBarSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private textSummary(Ljava/lang/String;I)V
    .locals 3

    .line 230
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    if-nez v0, :cond_0

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null preference found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreferencesFragment"

    invoke-static {p2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateIpfsGatewaySummary()V
    .locals 7

    .line 451
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isIpfsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getActiveIpfsGateways()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->ipfsGateways:Landroidx/preference/Preference;

    .line 454
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$plurals;->ipfsgw_summary:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->ipfsGateways:Landroidx/preference/Preference;

    sget v1, Lorg/fdroid/fdroid/R$string;->ipfsgw_summary_disabled:I

    .line 456
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateSummary(Ljava/lang/String;Z)V
    .locals 7

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "expert"

    const-string v2, "privilegedInstaller"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "updateIntervalSeekBarPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "overWifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "overData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "keepCacheFor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "showAntiFeatures"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "proxyPort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "proxyHost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "updateNotify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "enableProxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "keepInstallHistory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "incompatibleVersions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_d
    const-string v0, "usePureBlackDarkTheme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_e
    const-string v0, "ignoreTouchscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_f
    const-string v0, "language"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_10
    const-string v0, "sendToFdroidMetrics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_11
    const-string v0, "localRepoName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    move v6, v3

    goto :goto_0

    :sswitch_12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    move v6, v5

    goto :goto_0

    :sswitch_13
    const-string v0, "localRepoHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    move v6, v4

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 290
    sget-object p2, Lorg/fdroid/fdroid/Preferences;->UPDATE_INTERVAL_VALUES:[J

    array-length p2, p2

    sub-int/2addr p2, v5

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 291
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->getValue()I

    move-result p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 292
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->getUpdateIntervalSeekbarSummary(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overWifiSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 296
    invoke-virtual {p1, v3}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overWifiSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 297
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->setNetworkSeekBarSummary(Landroidx/preference/SeekBarPreference;)V

    .line 298
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->enableUpdateInterval()V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overDataSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 302
    invoke-virtual {p1, v3}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overDataSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 303
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->setNetworkSeekBarSummary(Landroidx/preference/SeekBarPreference;)V

    .line 304
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->enableUpdateInterval()V

    goto/16 :goto_5

    .line 359
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->entrySummary(Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    iget-wide p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->currentKeepCacheTime:J

    .line 361
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getKeepCacheTime()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1b

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->schedule(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 312
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->entrySummary(Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    .line 314
    invoke-static {}, Lorg/fdroid/fdroid/FDroidApp;->applyTheme()V

    goto/16 :goto_5

    :pswitch_5
    sget p2, Lorg/fdroid/fdroid/R$string;->show_anti_feature_apps_on:I

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 414
    :pswitch_6
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 415
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->getProxyPort()I

    move-result p2

    const/16 v0, 0x1fb6

    if-ne p2, v0, :cond_14

    sget p2, Lorg/fdroid/fdroid/R$string;->proxy_port_summary:I

    .line 417
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 419
    :cond_14
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 404
    :pswitch_7
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 405
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->getProxyHost()Ljava/lang/String;

    move-result-object p2

    .line 406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "127.0.0.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1

    .line 409
    :cond_15
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    :goto_1
    sget p2, Lorg/fdroid/fdroid/R$string;->proxy_host_summary:I

    .line 407
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :pswitch_8
    sget p2, Lorg/fdroid/fdroid/R$string;->notify_on:I

    .line 308
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_9
    sget v0, Lorg/fdroid/fdroid/R$string;->expert_on:I

    .line 367
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    .line 369
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->expertMode()Z

    move-result p1

    move v0, v4

    move v2, v0

    :goto_2
    iget-object v3, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->otherPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 370
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_18

    iget-object v3, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->otherPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 371
    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 372
    invoke-virtual {v3}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 373
    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/lit8 v2, v2, 0x1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    if-eqz p2, :cond_1b

    .line 378
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez p1, :cond_19

    goto :goto_3

    :cond_19
    move v4, v2

    :goto_3
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->topScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    sub-int/2addr v0, v4

    sub-int/2addr v0, v5

    .line 383
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 384
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->topScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto/16 :goto_5

    .line 399
    :pswitch_a
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    sget p2, Lorg/fdroid/fdroid/R$string;->enable_proxy_summary:I

    .line 400
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :pswitch_b
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->keepInstallHistoryPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 424
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->register(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    .line 426
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->sendToFDroidMetricsPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 427
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 429
    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->unregister(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    .line 430
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->sendToFDroidMetricsPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 431
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 433
    :goto_4
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->setFDroidMetricsWorker()V

    goto :goto_5

    :pswitch_c
    sget p2, Lorg/fdroid/fdroid/R$string;->show_incompat_versions_on:I

    .line 329
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_d
    if-eqz p2, :cond_1b

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_1b

    .line 323
    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    goto :goto_5

    :pswitch_e
    sget p2, Lorg/fdroid/fdroid/R$string;->force_touch_apps_on:I

    .line 337
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    goto :goto_5

    .line 349
    :pswitch_f
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->entrySummary(Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 352
    invoke-static {p1}, Lorg/fdroid/fdroid/Languages;->setLanguage(Landroid/content/ContextWrapper;)V

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/fdroid/fdroid/FDroidApp;->onLanguageChanged(Landroid/content/Context;)V

    .line 354
    invoke-static {p1}, Lorg/fdroid/fdroid/Languages;->forceChangeLanguage(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_5

    .line 437
    :pswitch_10
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->setFDroidMetricsWorker()V

    goto :goto_5

    :pswitch_11
    sget p2, Lorg/fdroid/fdroid/R$string;->local_repo_name_summary:I

    .line 341
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->textSummary(Ljava/lang/String;I)V

    goto :goto_5

    .line 391
    :pswitch_12
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_1b

    sget p2, Lorg/fdroid/fdroid/R$string;->system_installer_on:I

    .line 394
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_13
    sget p2, Lorg/fdroid/fdroid/R$string;->local_repo_https_on:I

    .line 345
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->checkSummary(Ljava/lang/String;I)V

    :cond_1b
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78358292 -> :sswitch_13
        -0x72c36b0b -> :sswitch_12
        -0x6f391658 -> :sswitch_11
        -0x6aa61956 -> :sswitch_10
        -0x602d6ca8 -> :sswitch_f
        -0x6016d8c7 -> :sswitch_e
        -0x5e185a4d -> :sswitch_d
        -0x5ae7688c -> :sswitch_c
        -0x5a5332a2 -> :sswitch_b
        -0x55fe5155 -> :sswitch_a
        -0x4cd711d6 -> :sswitch_9
        -0x40d8be8e -> :sswitch_8
        -0x1c64b2ca -> :sswitch_7
        -0x1c610ff1 -> :sswitch_6
        0x5fc255c -> :sswitch_5
        0x69375c9 -> :sswitch_4
        0x1e68588c -> :sswitch_3
        0x1f82169e -> :sswitch_2
        0x1f8ad609 -> :sswitch_1
        0x58883236 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 1

    .line 138
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->migrateOldPreferences()V

    sget p2, Lorg/fdroid/fdroid/R$xml;->preferences:I

    .line 141
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p2, "pref_category_other"

    .line 142
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroup;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->otherPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    const-string p2, "pref_about"

    .line 146
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->aboutPrefClickedListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 148
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string p2, "keepInstallHistory"

    .line 151
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->keepInstallHistoryPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string p2, "sendToFdroidMetrics"

    .line 153
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->sendToFDroidMetricsPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->keepInstallHistoryPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 154
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p2, "installHistory"

    .line 155
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->keepInstallHistoryPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 156
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 157
    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->isSendingToFDroidMetrics()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    sget p2, Lorg/fdroid/fdroid/R$string;->install_history_and_metrics:I

    .line 158
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    sget p2, Lorg/fdroid/fdroid/R$string;->install_history:I

    .line 160
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    const-string p1, "useDnsCache"

    .line 163
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useDnsCacheCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string p1, "useTor"

    .line 164
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useTorCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->useTorChangedListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 165
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "enableProxy"

    .line 166
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->enableProxyCheckPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->proxyEnabledChangedListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 167
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "updateAutoDownload"

    .line 168
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateAutoDownloadPref:Landroidx/preference/Preference;

    const-string p1, "overWifi"

    .line 170
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overWifiSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 171
    new-instance p2, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->setSeekBarLiveUpdater(Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;)V

    const-string p1, "overData"

    .line 172
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->overDataSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 173
    new-instance p2, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->setSeekBarLiveUpdater(Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;)V

    const-string p1, "updateIntervalSeekBarPosition"

    .line 174
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIntervalSeekBar:Lorg/fdroid/fdroid/views/LiveSeekBarPreference;

    .line 175
    new-instance p2, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->setSeekBarLiveUpdater(Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;)V

    const-string p1, "ipfsGateways"

    .line 176
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->ipfsGateways:Landroidx/preference/Preference;

    .line 177
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIpfsGatewaySummary()V

    const-string p1, "language"

    .line 179
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_2

    const-string p2, "pref_category_display"

    .line 181
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    invoke-static {p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 182
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p2}, Lorg/fdroid/fdroid/Languages;->get(Landroidx/appcompat/app/AppCompatActivity;)Lorg/fdroid/fdroid/Languages;

    move-result-object p2

    const-string v0, ""

    .line 185
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p2}, Lorg/fdroid/fdroid/Languages;->getAllNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p2}, Lorg/fdroid/fdroid/Languages;->getSupportedLocales()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 190
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.touchscreen"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "pref_category_appcompatibility"

    .line 191
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string p2, "ignoreTouchscreen"

    .line 194
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 193
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 197
    :cond_3
    new-instance p1, Lorg/fdroid/fdroid/views/PreferencesFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/fdroid/fdroid/views/PreferencesFragment$1;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->topScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 610
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 611
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 612
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->configureProxy(Lorg/fdroid/fdroid/Preferences;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 590
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 592
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object v0, Lorg/fdroid/fdroid/views/PreferencesFragment;->SUMMARIES_TO_UPDATE:[Ljava/lang/String;

    .line 594
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 595
    invoke-direct {p0, v4, v2}, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateSummary(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getKeepCacheTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->currentKeepCacheTime:J

    .line 600
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->initAutoFetchUpdatesPreference()V

    .line 601
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->initPrivilegedInstallerPreference()V

    .line 602
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->initUseDnsCachePreference()V

    .line 603
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->initUseTorPreference(Landroid/content/Context;)V

    .line 605
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateIpfsGatewaySummary()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x1

    .line 618
    invoke-direct {p0, p2, p1}, Lorg/fdroid/fdroid/views/PreferencesFragment;->updateSummary(Ljava/lang/String;Z)V

    const-string v0, "preventScreenshots"

    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->preventScreenshots()Z

    move-result p1

    const/16 p2, 0x2000

    if-eqz p1, :cond_0

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1

    .line 624
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "sendToFdroidMetrics"

    .line 626
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->isSendingToFDroidMetrics()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lorg/fdroid/fdroid/R$string;->toast_metrics_in_install_history:I

    new-array v0, p1, [Ljava/lang/Object;

    .line 629
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 628
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    sget v0, Lorg/fdroid/fdroid/R$string;->install_history_and_metrics:I

    .line 631
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 632
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/fdroid/fdroid/views/InstallHistoryActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "showFDroidMetrics"

    .line 633
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->installHistoryPref:Landroidx/preference/Preference;

    sget p2, Lorg/fdroid/fdroid/R$string;->install_history:I

    .line 636
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_3
    const-string p1, "overData"

    .line 638
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "overWifi"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "updateIntervalSeekBarPosition"

    .line 645
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 646
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->scheduleOrCancel(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->glideRequestManager:Lcom/bumptech/glide/RequestManager;

    if-nez p1, :cond_6

    .line 640
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->glideRequestManager:Lcom/bumptech/glide/RequestManager;

    :cond_6
    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->glideRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 642
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 643
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isBackgroundDownloadAllowed()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 642
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    .line 644
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->scheduleOrCancel(Landroid/content/Context;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 207
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/PreferencesFragment;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    .line 209
    invoke-virtual {p1}, Lorg/fdroid/fdroid/RepoUpdateManager;->getNextUpdateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/PreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/PreferencesFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
