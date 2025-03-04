.class public abstract Lio/ktor/client/request/RequestBodyKt;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# static fields
.field private static final BodyTypeAttributeKey:Lio/ktor/util/AttributeKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "BodyTypeAttributeKey"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/RequestBodyKt;->BodyTypeAttributeKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final getBodyTypeAttributeKey()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/request/RequestBodyKt;->BodyTypeAttributeKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method
