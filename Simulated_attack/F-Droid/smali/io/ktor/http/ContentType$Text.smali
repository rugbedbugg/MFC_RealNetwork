.class public final Lio/ktor/http/ContentType$Text;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/ContentType;

.field private static final CSS:Lio/ktor/http/ContentType;

.field private static final CSV:Lio/ktor/http/ContentType;

.field private static final EventStream:Lio/ktor/http/ContentType;

.field private static final Html:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$Text;

.field private static final JavaScript:Lio/ktor/http/ContentType;

.field private static final Plain:Lio/ktor/http/ContentType;

.field private static final VCard:Lio/ktor/http/ContentType;

.field private static final Xml:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/ktor/http/ContentType$Text;

    invoke-direct {v0}, Lio/ktor/http/ContentType$Text;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$Text;->INSTANCE:Lio/ktor/http/ContentType$Text;

    .line 248
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "*"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Any:Lio/ktor/http/ContentType;

    .line 249
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "plain"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Plain:Lio/ktor/http/ContentType;

    .line 250
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "css"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->CSS:Lio/ktor/http/ContentType;

    .line 251
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "csv"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->CSV:Lio/ktor/http/ContentType;

    .line 252
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "html"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Html:Lio/ktor/http/ContentType;

    .line 253
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "javascript"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->JavaScript:Lio/ktor/http/ContentType;

    .line 254
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "vcard"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->VCard:Lio/ktor/http/ContentType;

    .line 255
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "xml"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Xml:Lio/ktor/http/ContentType;

    .line 256
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "event-stream"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->EventStream:Lio/ktor/http/ContentType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlain()Lio/ktor/http/ContentType;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/ContentType$Text;->Plain:Lio/ktor/http/ContentType;

    return-object v0
.end method
