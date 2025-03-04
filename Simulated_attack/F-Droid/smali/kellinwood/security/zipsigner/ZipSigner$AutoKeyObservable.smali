.class public Lkellinwood/security/zipsigner/ZipSigner$AutoKeyObservable;
.super Ljava/util/Observable;
.source "ZipSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkellinwood/security/zipsigner/ZipSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoKeyObservable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 773
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .line 776
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 777
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
