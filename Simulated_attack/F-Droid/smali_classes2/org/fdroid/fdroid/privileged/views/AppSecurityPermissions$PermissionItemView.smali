.class public Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field dialog:Landroidx/appcompat/app/AlertDialog;

.field group:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

.field perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->group:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 209
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->group:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 210
    iget-object v1, v1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    .line 211
    iget v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {v1, p1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 216
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 217
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    .line 219
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 221
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/fdroid/fdroid/R$string;->perms_description_app:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 224
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->group:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 227
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    iget-object v0, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    sget v2, Lorg/fdroid/fdroid/R$string;->copied_permission_to_clipboard:I

    invoke-static {p1, v0, v1, v2}, Lorg/fdroid/fdroid/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method setPermission(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)V
    .locals 4

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->group:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    iput-object p2, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->perm:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    sget v0, Lorg/fdroid/fdroid/R$id;->perm_icon:I

    .line 173
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lorg/fdroid/fdroid/R$id;->perm_name:I

    .line 174
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 181
    :goto_0
    iget-object p3, p2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    .line 182
    iget-boolean p2, p2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->newPerm:Z

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 184
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 186
    invoke-static {p4, v2, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 187
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 188
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 189
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {p2, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p4, " "

    .line 191
    invoke-virtual {p2, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 192
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p3, p2

    .line 196
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
