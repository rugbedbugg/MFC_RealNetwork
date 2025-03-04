.class public abstract Lcom/google/zxing/encode/Contents;
.super Ljava/lang/Object;
.source "Contents.java"


# static fields
.field public static final EMAIL_KEYS:[Ljava/lang/String;

.field public static final EMAIL_TYPE_KEYS:[Ljava/lang/String;

.field public static final PHONE_KEYS:[Ljava/lang/String;

.field public static final PHONE_TYPE_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const-string v0, "secondary_phone"

    const-string v1, "tertiary_phone"

    const-string v2, "phone"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/encode/Contents;->PHONE_KEYS:[Ljava/lang/String;

    const-string v0, "secondary_phone_type"

    const-string v1, "tertiary_phone_type"

    const-string v2, "phone_type"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/encode/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    const-string v0, "secondary_email"

    const-string v1, "tertiary_email"

    const-string v2, "email"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/encode/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    const-string v0, "secondary_email_type"

    const-string v1, "tertiary_email_type"

    const-string v2, "email_type"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/encode/Contents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    return-void
.end method
