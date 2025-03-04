.class public final enum Lkellinwood/security/zipsigner/ResourceAdapter$Item;
.super Ljava/lang/Enum;
.source "ResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkellinwood/security/zipsigner/ResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkellinwood/security/zipsigner/ResourceAdapter$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum AUTO_KEY_SELECTION_ERROR:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum COPYING_ZIP_ENTRY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum GENERATING_MANIFEST:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum GENERATING_SIGNATURE_BLOCK:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum GENERATING_SIGNATURE_FILE:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum INPUT_SAME_AS_OUTPUT_ERROR:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum LOADING_CERTIFICATE_AND_KEY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

.field public static final enum PARSING_CENTRAL_DIRECTORY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;


# direct methods
.method private static synthetic $values()[Lkellinwood/security/zipsigner/ResourceAdapter$Item;
    .locals 3

    .line 0
    const/16 v0, 0x8

    new-array v0, v0, [Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const/4 v1, 0x0

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->INPUT_SAME_AS_OUTPUT_ERROR:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->AUTO_KEY_SELECTION_ERROR:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->LOADING_CERTIFICATE_AND_KEY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->PARSING_CENTRAL_DIRECTORY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->GENERATING_MANIFEST:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->GENERATING_SIGNATURE_FILE:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->GENERATING_SIGNATURE_BLOCK:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->COPYING_ZIP_ENTRY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "INPUT_SAME_AS_OUTPUT_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->INPUT_SAME_AS_OUTPUT_ERROR:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 10
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "AUTO_KEY_SELECTION_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->AUTO_KEY_SELECTION_ERROR:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 11
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "LOADING_CERTIFICATE_AND_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->LOADING_CERTIFICATE_AND_KEY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 12
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "PARSING_CENTRAL_DIRECTORY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->PARSING_CENTRAL_DIRECTORY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 13
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "GENERATING_MANIFEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->GENERATING_MANIFEST:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 14
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "GENERATING_SIGNATURE_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->GENERATING_SIGNATURE_FILE:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 15
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "GENERATING_SIGNATURE_BLOCK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->GENERATING_SIGNATURE_BLOCK:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 16
    new-instance v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    const-string v1, "COPYING_ZIP_ENTRY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->COPYING_ZIP_ENTRY:Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 8
    invoke-static {}, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->$values()[Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    move-result-object v0

    sput-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->$VALUES:[Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkellinwood/security/zipsigner/ResourceAdapter$Item;
    .locals 1

    const-class v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    return-object p0
.end method

.method public static values()[Lkellinwood/security/zipsigner/ResourceAdapter$Item;
    .locals 1

    sget-object v0, Lkellinwood/security/zipsigner/ResourceAdapter$Item;->$VALUES:[Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    .line 8
    invoke-virtual {v0}, [Lkellinwood/security/zipsigner/ResourceAdapter$Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkellinwood/security/zipsigner/ResourceAdapter$Item;

    return-object v0
.end method
