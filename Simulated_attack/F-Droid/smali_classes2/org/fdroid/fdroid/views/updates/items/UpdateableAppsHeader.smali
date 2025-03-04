.class public Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;
.super Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;
.source "UpdateableAppsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;,
        Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;
    }
.end annotation


# instance fields
.field public final adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

.field public final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p3, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->apps:Ljava/util/List;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    return-void
.end method
