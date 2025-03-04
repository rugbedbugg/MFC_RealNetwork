.class public final synthetic Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    check-cast p1, Lorg/fdroid/database/App;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->$r8$lambda$4kxvQawdrLH1q3SQm1NH3Rwpu2U(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/App;)V

    return-void
.end method
