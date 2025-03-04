.class public Lorg/fdroid/fdroid/views/InstallHistoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InstallHistoryActivity.java"


# static fields
.field static final EXTRA_SHOW_FDROID_METRICS:Ljava/lang/String; = "showFDroidMetrics"

.field public static final TAG:Ljava/lang/String; = "InstallHistoryActivity"


# instance fields
.field private appName:Ljava/lang/String;

.field private showMenuItem:Landroid/view/MenuItem;

.field private showingInstallHistory:Z

.field private textView:Landroid/widget/TextView;

.field private toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private showFDroidMetricsReport()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    sget v1, Lorg/fdroid/fdroid/R$string;->fdroid_metrics_report:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->appName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 113
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->textView:Landroid/widget/TextView;

    .line 114
    invoke-static {p0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->generateReport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showingInstallHistory:Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isSendingToFDroidMetrics()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_show_install_history:I

    .line 118
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private showInstallHistory()V
    .locals 8

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 90
    sget-object v7, Lorg/fdroid/fdroid/installer/InstallHistoryService;->LOG_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "r"

    .line 96
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 99
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 101
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_2
    iget-object v1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    sget v2, Lorg/fdroid/fdroid/R$string;->install_history:I

    .line 103
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->textView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showingInstallHistory:Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isSendingToFDroidMetrics()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_show_fdroid_metrics_report:I

    .line 108
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 64
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 66
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->activity_install_history:I

    .line 69
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lorg/fdroid/fdroid/R$id;->text:I

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->textView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$string;->app_name:I

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->appName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "showFDroidMetrics"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showFDroidMetricsReport()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showInstallHistory()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$menu;->install_history:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->menu_show:I

    .line 125
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    .line 126
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isSendingToFDroidMetrics()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showingInstallHistory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_show_fdroid_metrics_report:I

    .line 128
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showMenuItem:Landroid/view/MenuItem;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_show_install_history:I

    .line 130
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 132
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->menu_share:I

    if-ne v0, v1, :cond_3

    .line 139
    invoke-static {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showingInstallHistory:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repos:\n"

    .line 142
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fdroid/index/RepoManager;->getRepositories()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fdroid/database/Repository;

    .line 144
    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "* "

    .line 145
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    sget-object v4, Lorg/fdroid/fdroid/installer/InstallHistoryService;->LOG_URI:Landroid/net/Uri;

    .line 152
    invoke-virtual {v1, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    const-string v4, "text/plain"

    .line 153
    invoke-virtual {v1, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    sget v4, Lorg/fdroid/fdroid/R$string;->send_history_csv:I

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->appName:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 154
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->send_install_history:I

    .line 155
    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->textView:Landroid/widget/TextView;

    .line 158
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    const-string v4, "application/json"

    .line 159
    invoke-virtual {v1, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    sget v4, Lorg/fdroid/fdroid/R$string;->send_fdroid_metrics_json:I

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->appName:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 160
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->send_fdroid_metrics_report:I

    .line 161
    invoke-virtual {v1, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;

    .line 163
    :goto_1
    invoke-virtual {v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    sget v1, Lorg/fdroid/fdroid/R$id;->menu_delete:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showingInstallHistory:Z

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/fdroid/fdroid/installer/InstallHistoryService;->LOG_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->textView:Landroid/widget/TextView;

    const-string v1, ""

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    sget v1, Lorg/fdroid/fdroid/R$id;->menu_show:I

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showingInstallHistory:Z

    if-eqz v0, :cond_6

    .line 173
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showFDroidMetricsReport()V

    goto :goto_2

    .line 175
    :cond_6
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/InstallHistoryActivity;->showInstallHistory()V

    .line 178
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
