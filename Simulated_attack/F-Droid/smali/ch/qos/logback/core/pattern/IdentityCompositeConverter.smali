.class public Lch/qos/logback/core/pattern/IdentityCompositeConverter;
.super Lch/qos/logback/core/pattern/CompositeConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/pattern/CompositeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 0
    return-object p2
.end method
