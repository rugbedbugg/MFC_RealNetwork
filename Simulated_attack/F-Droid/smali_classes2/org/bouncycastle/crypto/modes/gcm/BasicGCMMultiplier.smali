.class public Lorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 0

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[J

    return-void
.end method

.method public multiplyH([B)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[J

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[J)V

    return-void
.end method
