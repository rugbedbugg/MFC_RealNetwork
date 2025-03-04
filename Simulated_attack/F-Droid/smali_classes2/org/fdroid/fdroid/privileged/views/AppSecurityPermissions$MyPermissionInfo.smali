.class Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;
.super Landroid/content/pm/PermissionInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPermissionInfo"
.end annotation


# instance fields
.field existingReqFlags:I

.field label:Ljava/lang/CharSequence;

.field newPerm:Z


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    return-void
.end method
