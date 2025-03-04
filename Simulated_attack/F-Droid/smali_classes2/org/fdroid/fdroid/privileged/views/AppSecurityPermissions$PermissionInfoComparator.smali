.class Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 462
    check-cast p1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    check-cast p2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;->compare(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;->collator:Ljava/text/Collator;

    .line 470
    iget-object p1, p1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
