.class public Lorg/fdroid/fdroid/views/updates/items/AppStatus;
.super Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;
.source "AppStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/updates/items/AppStatus$Delegate;
    }
.end annotation


# instance fields
.field public final status:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    return-void
.end method
