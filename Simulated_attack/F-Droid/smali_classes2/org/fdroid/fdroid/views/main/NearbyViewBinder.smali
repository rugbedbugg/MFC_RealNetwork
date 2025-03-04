.class public Lorg/fdroid/fdroid/views/main/NearbyViewBinder;
.super Ljava/lang/Object;
.source "NearbyViewBinder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NearbyViewBinder"

.field private static externalStorage:Ljava/io/File;

.field private static swapView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$1pBz0Zf-mehp9LXS31MpDYUX4x8(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->lambda$updateExternalStorageViews$1(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4XK-nso0SEkOPAwPVzYfrWh59Qs(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->lambda$updateExternalStorageViews$2(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DLamJXyyWWXbbMywEqTn22y5wWA(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->lambda$updateExternalStorageViews$4(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PfgJvnug1KYuSOTmbdsZ7sdy7jg(Landroid/content/Context;Landroid/os/storage/StorageVolume;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->lambda$updateUsbOtg$5(Landroid/content/Context;Landroid/os/storage/StorageVolume;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bibJ5N_3lwP0tjJwZIuWg4TvIls(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->lambda$new$0(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$blBR17u9NvQYc0RWbazMOONpsRg(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->lambda$updateExternalStorageViews$3(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->main_tab_nearby:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sput-object p2, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$id;->both_parties_need_fdroid_text:I

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splash__both_parties_need_fdroid:I

    new-array v1, v2, [Ljava/lang/Object;

    sget v2, Lorg/fdroid/fdroid/R$string;->app_name:I

    .line 75
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$id;->find_people_button:I

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 78
    new-instance v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda12;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->updateExternalStorageViews(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 89
    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->updateUsbOtg(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 80
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0xef0f

    .line 81
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/nearby/SwapService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateExternalStorageViews$1(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3

    .line 131
    new-instance p1, Landroid/content/Intent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "package:%s"

    .line 133
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$updateExternalStorageViews$2(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 138
    invoke-static {p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->scanExternalStorageNow(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private static synthetic lambda$updateExternalStorageViews$3(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0xb004

    .line 147
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$updateExternalStorageViews$4(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-static {p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->scanExternalStorageNow(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private static synthetic lambda$updateUsbOtg$5(Landroid/content/Context;Landroid/os/storage/StorageVolume;Landroid/content/Intent;Landroid/view/View;)V
    .locals 6

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 218
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    .line 219
    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "/tree/%s:"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    invoke-static {p0, p2}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->onActivityResult(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 229
    :cond_1
    instance-of p1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_2

    .line 230
    move-object p1, p0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_3

    sget-object p1, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    const/16 p0, 0x40e5

    .line 236
    invoke-virtual {p1, p2, p0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$string;->scan_removable_storage_toast:I

    new-array p3, v0, [Ljava/lang/Object;

    sget-object v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->externalStorage:Ljava/io/File;

    aput-object v0, p3, v1

    .line 240
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SDCardScannerService;->scan(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method private static scanExternalStorageNow(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4

    sget v0, Lorg/fdroid/fdroid/R$string;->scan_removable_storage_toast:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->externalStorage:Ljava/io/File;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 160
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SDCardScannerService;->scan(Landroid/content/Context;)V

    return-void
.end method

.method public static updateExternalStorageViews(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 10

    sget-object v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    if-eqz v0, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget v1, Lorg/fdroid/fdroid/R$id;->image:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    sget v2, Lorg/fdroid/fdroid/R$id;->read_external_storage_text:I

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    sget v3, Lorg/fdroid/fdroid/R$id;->request_read_external_storage_button:I

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, ""

    .line 105
    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 107
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    if-eqz v7, :cond_3

    .line 108
    invoke-static {v7}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    invoke-static {v7}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted_ro"

    .line 110
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "mounted"

    .line 111
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 113
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    sput-object v3, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->externalStorage:Ljava/io/File;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v3, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->externalStorage:Ljava/io/File;

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    .line 123
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_6

    .line 127
    invoke-static {}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splach__external_storage_permission_explainer:I

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splace__external_storage_permission_button:I

    .line 130
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    new-instance v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda8;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splash__read_external_storage:I

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splash__request_permission:I

    .line 137
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 138
    new-instance v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda9;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->externalStorage:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 143
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splach__external_storage_permission_explainer:I

    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splace__external_storage_permission_button:I

    .line 145
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    new-instance v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda10;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splash__read_external_storage:I

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->nearby_splash__request_permission:I

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 153
    new-instance v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda11;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static updateUsbOtg(Landroid/content/Context;)V
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    const-string v1, "NearbyViewBinder"

    if-nez v0, :cond_1

    const-string p0, "swapView == null"

    .line 170
    invoke-static {v1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget v2, Lorg/fdroid/fdroid/R$id;->storage_volume_text:I

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->swapView:Landroid/view/View;

    sget v3, Lorg/fdroid/fdroid/R$id;->request_storage_volume_button:I

    .line 174
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v3, 0x8

    .line 175
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-class v3, Landroid/os/storage/StorageManager;

    .line 178
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 179
    invoke-static {v3}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline2;->m(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 180
    invoke-static {v4}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline4;->m(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline5;->m(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StorageVolume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-ge v5, v6, :cond_3

    const/4 v5, 0x0

    .line 184
    invoke-static {v4, v5}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline6;->m(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_1

    .line 186
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.externalstorage.documents/tree/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v4}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%3A/document/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v4}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%3A"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "android.provider.extra.INITIAL_URI"

    .line 187
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    if-nez v5, :cond_4

    const-string p0, "Got null Storage Volume access Intent"

    .line 197
    invoke-static {v1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    .line 202
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-static {v4, p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline7;->m(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 206
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "device"

    .line 207
    invoke-virtual {v5, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    if-eqz v8, :cond_5

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v6

    .line 209
    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const/4 v7, 0x2

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    const-string v7, "%s (%s %s)"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 214
    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    new-instance v6, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, v4, v5}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Landroid/content/Intent;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
