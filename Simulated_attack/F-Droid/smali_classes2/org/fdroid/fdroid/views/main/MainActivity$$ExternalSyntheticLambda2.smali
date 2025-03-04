.class public final synthetic Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/main/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/main/MainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/main/MainActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->$r8$lambda$nIlfqc73j3Nycfz6EfLTant3F1o(Lorg/fdroid/fdroid/views/main/MainActivity;I)V

    return-void
.end method
