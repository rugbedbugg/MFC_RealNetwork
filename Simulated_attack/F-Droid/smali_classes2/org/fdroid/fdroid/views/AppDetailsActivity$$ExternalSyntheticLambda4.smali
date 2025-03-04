.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

.field public final synthetic f$1:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;->f$1:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda4;->f$1:Lorg/fdroid/fdroid/data/Apk;

    invoke-static {v0, v1, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->$r8$lambda$Be30x-vA7Gr_mrmbuNENTzNdJ4s(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/Apk;Landroid/content/DialogInterface;I)V

    return-void
.end method
