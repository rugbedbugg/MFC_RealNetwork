.class public Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp;
.super Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;
.source "KnownVulnApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp$Delegate;
    }
.end annotation


# instance fields
.field public final apk:Lorg/fdroid/fdroid/data/Apk;

.field public final app:Lorg/fdroid/fdroid/data/App;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp;->app:Lorg/fdroid/fdroid/data/App;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnApp;->apk:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method
