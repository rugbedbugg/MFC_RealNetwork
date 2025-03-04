.class public Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RepoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;
    }
.end annotation


# static fields
.field static final ARG_REPO_ID:Ljava/lang/String; = "repo_id"

.field private static final HIDE_IF_EXISTS:[I

.field private static final SHOW_IF_EXISTS:[I

.field private static final TAG:Ljava/lang/String; = "RepoDetailsActivity"


# instance fields
.field private adapterToNotify:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

.field private appDao:Lorg/fdroid/database/AppDao;

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private model:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

.field private repo:Lorg/fdroid/database/Repository;

.field private repoId:J

.field private repoView:Landroid/view/View;

.field private repositoryDao:Lorg/fdroid/database/RepositoryDao;

.field private shareUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2v-KhVIngF2aSEQZ4jtpOFv4j8g(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$onCreate$1(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4f71NQE5gyxedNYb-VobgB6UwBQ(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$promptForDelete$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4TWe8q1ulanXNthopfpMf-Q6_E(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$showChangePasswordDialog$12(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GrBZpnXfy20vvqlWfb6Y1JFO0fc(Landroidx/appcompat/widget/SwitchCompat;Lorg/fdroid/fdroid/views/repos/RepoDetailsState;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$onCreate$2(Landroidx/appcompat/widget/SwitchCompat;Lorg/fdroid/fdroid/views/repos/RepoDetailsState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H4NMgSKjuD0F5PkXPR1-HFHzAAY(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$showChangePasswordDialog$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TC6-pXbG3ElexoAs4QbkX9JYnZQ(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$showChangePasswordDialog$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Tph3eXm11LXj65FH0TgVzbHK4IU(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$onCreate$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6KM3Utz1bJLNbpvP4giFntSymg(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->showChangePasswordDialog(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLdXIBUf_krz4Sbs_APJ4hAqWNM(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$updateViewForExistingRepo$4()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jIz9p6BIm4rt9xp6jCB-xccbfO8(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$updateViewForExistingRepo$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lG_pn1TD2kXiJWG-bfTwORuIIcE(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$promptForDelete$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sCJeoRSiGdILblJ4LP4CywTQgFU(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$promptForDelete$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sJIjGAG9ewX3wxzUmMmYkOCSvsk(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$updateViewForExistingRepo$5(Landroid/widget/TextView;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4ajxQzcNdOtz3neNaC7lQKhtRQ(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroidx/appcompat/widget/SwitchCompat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->lambda$onCreate$3(Landroidx/appcompat/widget/SwitchCompat;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapterToNotify(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->adapterToNotify:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepositoryDao(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)Lorg/fdroid/database/RepositoryDao;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repositoryDao:Lorg/fdroid/database/RepositoryDao;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrunOffUiThread(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->runOffUiThread(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 0
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/fdroid/fdroid/R$id;->label_repo_name:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/fdroid/fdroid/R$id;->text_repo_name:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lorg/fdroid/fdroid/R$id;->label_description:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lorg/fdroid/fdroid/R$id;->text_description:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lorg/fdroid/fdroid/R$id;->label_num_apps:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lorg/fdroid/fdroid/R$id;->text_num_apps:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lorg/fdroid/fdroid/R$id;->button_view_apps:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lorg/fdroid/fdroid/R$id;->label_last_update:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lorg/fdroid/fdroid/R$id;->text_last_update:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lorg/fdroid/fdroid/R$id;->label_last_update_downloaded:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lorg/fdroid/fdroid/R$id;->text_last_update_downloaded:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lorg/fdroid/fdroid/R$id;->label_username:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lorg/fdroid/fdroid/R$id;->text_username:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lorg/fdroid/fdroid/R$id;->button_edit_credentials:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lorg/fdroid/fdroid/R$id;->label_repo_fingerprint:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lorg/fdroid/fdroid/R$id;->text_repo_fingerprint:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lorg/fdroid/fdroid/R$id;->text_repo_fingerprint_description:I

    aput v2, v0, v1

    sput-object v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->SHOW_IF_EXISTS:[I

    sget v0, Lorg/fdroid/fdroid/R$id;->text_not_yet_updated:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->HIDE_IF_EXISTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget v0, Lorg/fdroid/fdroid/R$id;->qr_code:I

    .line 189
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Lorg/fdroid/database/Repository;)V
    .locals 0

    if-nez p1, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 203
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->updateRepoView()V

    return-void
.end method

.method private static synthetic lambda$onCreate$2(Landroidx/appcompat/widget/SwitchCompat;Lorg/fdroid/fdroid/views/repos/RepoDetailsState;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->getArchiveEnabled()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 210
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroidx/appcompat/widget/SwitchCompat;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->model:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 216
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->setArchiveRepoEnabled(Lorg/fdroid/database/Repository;Z)V

    return-void
.end method

.method private synthetic lambda$promptForDelete$7()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repositoryDao:Lorg/fdroid/database/RepositoryDao;

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoId:J

    .line 460
    invoke-interface {v0, v1, v2}, Lorg/fdroid/database/RepositoryDao;->deleteRepository(J)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private synthetic lambda$promptForDelete$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 459
    new-instance p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->runOffUiThread(Ljava/util/concurrent/Callable;)V

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$promptForDelete$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method private static synthetic lambda$showChangePasswordDialog$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 483
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showChangePasswordDialog$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repositoryDao:Lorg/fdroid/database/RepositoryDao;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 493
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/fdroid/database/RepositoryDao;->updateUsernameAndPassword(JLjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$showChangePasswordDialog$12(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 488
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 492
    new-instance p4, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p4, p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->runOffUiThread(Ljava/util/concurrent/Callable;)V

    .line 496
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->updateRepoView()V

    .line 497
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$string;->repo_error_empty_username:I

    const/4 p2, 0x1

    .line 499
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateViewForExistingRepo$4()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->appDao:Lorg/fdroid/database/AppDao;

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoId:J

    .line 414
    invoke-interface {v0, v1, v2}, Lorg/fdroid/database/AppDao;->getNumberOfAppsInRepository(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$updateViewForExistingRepo$5(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 418
    invoke-static {}, Lorg/fdroid/fdroid/compat/LocaleCompat;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateViewForExistingRepo$6(Landroid/view/View;)V
    .locals 3

    .line 423
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/views/apps/AppListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 424
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    const-string v2, "org.fdroid.fdroid.views.apps.AppListActivity.REPO_ID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static launch(Landroid/content/Context;J)V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "repo_id"

    .line 69
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private prepareShareMenuItems(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 296
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 297
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 299
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fingerprint"

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 300
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->shareUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid repo fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RepoDetailsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 303
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->shareUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 306
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->shareUrl:Ljava/lang/String;

    :goto_0
    sget v0, Lorg/fdroid/fdroid/R$id;->action_share:I

    .line 308
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    sget v0, Lorg/fdroid/fdroid/R$id;->action_share:I

    .line 310
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    const/4 v0, 0x0

    .line 251
    aget-object p1, p1, v0

    check-cast p1, Landroid/nfc/NdefMessage;

    .line 252
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got this URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RepoDetailsActivity"

    invoke-static {v2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 255
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 256
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private promptForDelete()V
    .locals 3

    .line 455
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/fdroid/fdroid/R$string;->repo_confirm_delete_title:I

    .line 456
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->repo_confirm_delete_body:I

    .line 457
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->delete:I

    new-instance v2, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    .line 458
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda6;-><init>()V

    const/high16 v2, 0x1040000

    .line 464
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private runOffUiThread(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    .line 602
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 603
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 604
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private static setMultipleViewVisibility(Landroid/view/View;[II)V
    .locals 3

    .line 125
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 126
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupCredentials(Landroid/view/View;Lorg/fdroid/database/Repository;)V
    .locals 3

    sget v0, Lorg/fdroid/fdroid/R$id;->label_username:I

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->text_username:I

    .line 355
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lorg/fdroid/fdroid/R$id;->button_edit_credentials:I

    .line 356
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 357
    new-instance v2, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p2, 0x8

    .line 360
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, ""

    .line 362
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 365
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupDescription(Landroid/view/View;Lorg/fdroid/database/Repository;)V
    .locals 2

    sget v0, Lorg/fdroid/fdroid/R$id;->label_description:I

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->text_description:I

    .line 317
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 319
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/fdroid/database/Repository;->getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "\n"

    const-string v1, " "

    .line 327
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 321
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, ""

    .line 323
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setupRepoFingerprint(Landroid/view/View;Lorg/fdroid/database/Repository;)V
    .locals 3

    sget v0, Lorg/fdroid/fdroid/R$id;->text_repo_fingerprint:I

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->text_repo_fingerprint_description:I

    .line 333
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 338
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lorg/fdroid/fdroid/R$string;->unsigned:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/fdroid/fdroid/R$color;->unsigned:I

    .line 340
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->unsigned_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/fdroid/fdroid/Utils;->formatFingerprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x8

    .line 346
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showChangePasswordDialog(Landroid/view/View;)V
    .locals 5

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->login:I

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 472
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->edit_name:I

    .line 473
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lorg/fdroid/fdroid/R$id;->edit_password:I

    .line 474
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 475
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 476
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 478
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    sget v2, Lorg/fdroid/fdroid/R$string;->repo_edit_credentials:I

    .line 481
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    sget v2, Lorg/fdroid/fdroid/R$string;->cancel:I

    .line 483
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda7;-><init>()V

    const/4 v4, -0x2

    .line 482
    invoke-virtual {v0, v4, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget v2, Lorg/fdroid/fdroid/R$string;->ok:I

    .line 486
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 p1, -0x1

    .line 485
    invoke-virtual {v0, p1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 504
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateRepoView()V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->label_official_mirrors:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    sget v2, Lorg/fdroid/fdroid/R$id;->official_mirror_list:I

    .line 374
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 375
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getAllMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-le v2, v3, :cond_0

    .line 377
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->label_user_mirrors:I

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    sget v2, Lorg/fdroid/fdroid/R$id;->user_mirror_list:I

    .line 385
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 386
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getUserMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 387
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 390
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 394
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    .line 395
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->updateViewForExistingRepo(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    sget-object v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->HIDE_IF_EXISTS:[I

    .line 397
    invoke-static {v0, v1, v5}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setMultipleViewVisibility(Landroid/view/View;[II)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    sget-object v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->SHOW_IF_EXISTS:[I

    .line 398
    invoke-static {v0, v1, v4}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setMultipleViewVisibility(Landroid/view/View;[II)V

    :goto_2
    return-void
.end method

.method private updateViewForExistingRepo(Landroid/view/View;)V
    .locals 9

    sget-object v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->SHOW_IF_EXISTS:[I

    const/4 v1, 0x0

    .line 403
    invoke-static {p1, v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setMultipleViewVisibility(Landroid/view/View;[II)V

    sget-object v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->HIDE_IF_EXISTS:[I

    const/16 v2, 0x8

    .line 404
    invoke-static {p1, v0, v2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setMultipleViewVisibility(Landroid/view/View;[II)V

    sget v0, Lorg/fdroid/fdroid/R$id;->text_repo_name:I

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lorg/fdroid/fdroid/R$id;->text_num_apps:I

    .line 407
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lorg/fdroid/fdroid/R$id;->button_view_apps:I

    .line 408
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lorg/fdroid/fdroid/R$id;->text_last_update:I

    .line 409
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lorg/fdroid/fdroid/R$id;->text_last_update_downloaded:I

    .line 410
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 412
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 415
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v7

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 416
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v7

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v7, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, v3}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/TextView;)V

    .line 417
    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 421
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 432
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setupDescription(Landroid/view/View;Lorg/fdroid/database/Repository;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 433
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setupRepoFingerprint(Landroid/view/View;Lorg/fdroid/database/Repository;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 434
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->setupCredentials(Landroid/view/View;Lorg/fdroid/database/Repository;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 436
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    const/16 v0, 0x11

    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$string;->unknown:I

    .line 437
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 439
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 442
    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 444
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_3

    sget p1, Lorg/fdroid/fdroid/R$string;->unknown:I

    .line 445
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 447
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 450
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getLastUpdated()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 133
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 135
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 136
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->model:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 137
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repositoryDao:Lorg/fdroid/database/RepositoryDao;

    .line 138
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->appDao:Lorg/fdroid/database/AppDao;

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->activity_repo_details:I

    .line 142
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 144
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 146
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_view:I

    .line 148
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoView:Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "repo_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoId:J

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->model:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 151
    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->initRepo(J)V

    .line 152
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p1

    iget-wide v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoId:J

    invoke-virtual {p1, v0, v1}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    if-nez p1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$id;->input_repo_url:I

    .line 159
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 160
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->official_mirror_list:I

    .line 162
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 164
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/fdroid/database/Repository;->getAllMirrors(Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Lorg/fdroid/database/Repository;Ljava/util/List;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->adapterToNotify:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

    .line 165
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->user_mirror_list:I

    .line 167
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 169
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getUserMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Lorg/fdroid/database/Repository;I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 170
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getUserMirrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->setUserMirrors(Ljava/util/List;)V

    .line 171
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 173
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 178
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 180
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fingerprint"

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid repo fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RepoDetailsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/Utils;->generateQrBitmap(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    .line 188
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->model:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 196
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->getRepoLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->archiveRepo:I

    .line 206
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->model:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 207
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 216
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$menu;->repo_details_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 222
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-static {p0}, Landroidx/core/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    return v2

    :cond_0
    sget v1, Lorg/fdroid/fdroid/R$id;->menu_delete:I

    if-ne v0, v1, :cond_1

    .line 276
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->promptForDelete()V

    return v2

    :cond_1
    sget v1, Lorg/fdroid/fdroid/R$id;->action_share:I

    if-ne v0, v1, :cond_2

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->shareUrl:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->share_repository:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->prepareShareMenuItems(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 227
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 235
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repoId:J

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->repo:Lorg/fdroid/database/Repository;

    .line 236
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->updateRepoView()V

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->processIntent(Landroid/content/Intent;)V

    return-void
.end method
