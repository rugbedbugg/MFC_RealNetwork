.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    check-cast p1, Lorg/fdroid/fdroid/views/appdetails/AppData;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->$r8$lambda$ICkEDIuPzHcrW2IAR0a56RmyFz8(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/views/appdetails/AppData;)V

    return-void
.end method
