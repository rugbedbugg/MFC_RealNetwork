.class public final synthetic Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->$r8$lambda$rjk0_THsaCqdLljliGPrytkGsmI(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
