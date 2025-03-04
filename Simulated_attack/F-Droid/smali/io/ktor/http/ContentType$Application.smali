.class public final Lio/ktor/http/ContentType$Application;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/ContentType;

.field private static final Atom:Lio/ktor/http/ContentType;

.field private static final Cbor:Lio/ktor/http/ContentType;

.field private static final Docx:Lio/ktor/http/ContentType;

.field private static final FormUrlEncoded:Lio/ktor/http/ContentType;

.field private static final GZip:Lio/ktor/http/ContentType;

.field private static final HalJson:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$Application;

.field private static final JavaScript:Lio/ktor/http/ContentType;

.field private static final Json:Lio/ktor/http/ContentType;

.field private static final OctetStream:Lio/ktor/http/ContentType;

.field private static final Pdf:Lio/ktor/http/ContentType;

.field private static final Pptx:Lio/ktor/http/ContentType;

.field private static final ProblemJson:Lio/ktor/http/ContentType;

.field private static final ProblemXml:Lio/ktor/http/ContentType;

.field private static final ProtoBuf:Lio/ktor/http/ContentType;

.field private static final Rss:Lio/ktor/http/ContentType;

.field private static final Wasm:Lio/ktor/http/ContentType;

.field private static final Xlsx:Lio/ktor/http/ContentType;

.field private static final Xml:Lio/ktor/http/ContentType;

.field private static final Xml_Dtd:Lio/ktor/http/ContentType;

.field private static final Zip:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/ktor/http/ContentType$Application;

    invoke-direct {v0}, Lio/ktor/http/ContentType$Application;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    .line 160
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "*"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Any:Lio/ktor/http/ContentType;

    .line 161
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "atom+xml"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Atom:Lio/ktor/http/ContentType;

    .line 162
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "cbor"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Cbor:Lio/ktor/http/ContentType;

    .line 163
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "json"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Json:Lio/ktor/http/ContentType;

    .line 164
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "hal+json"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->HalJson:Lio/ktor/http/ContentType;

    .line 165
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "javascript"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->JavaScript:Lio/ktor/http/ContentType;

    .line 166
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "octet-stream"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->OctetStream:Lio/ktor/http/ContentType;

    .line 167
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "rss+xml"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Rss:Lio/ktor/http/ContentType;

    .line 168
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "xml"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Xml:Lio/ktor/http/ContentType;

    .line 169
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "xml-dtd"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Xml_Dtd:Lio/ktor/http/ContentType;

    .line 170
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "zip"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Zip:Lio/ktor/http/ContentType;

    .line 171
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "gzip"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->GZip:Lio/ktor/http/ContentType;

    .line 174
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "x-www-form-urlencoded"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->FormUrlEncoded:Lio/ktor/http/ContentType;

    .line 176
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "pdf"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Pdf:Lio/ktor/http/ContentType;

    .line 177
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Xlsx:Lio/ktor/http/ContentType;

    .line 181
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Docx:Lio/ktor/http/ContentType;

    .line 185
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "vnd.openxmlformats-officedocument.presentationml.presentation"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Pptx:Lio/ktor/http/ContentType;

    .line 189
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "protobuf"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->ProtoBuf:Lio/ktor/http/ContentType;

    .line 190
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "wasm"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Wasm:Lio/ktor/http/ContentType;

    .line 191
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "problem+json"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->ProblemJson:Lio/ktor/http/ContentType;

    .line 192
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "problem+xml"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->ProblemXml:Lio/ktor/http/ContentType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOctetStream()Lio/ktor/http/ContentType;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/ContentType$Application;->OctetStream:Lio/ktor/http/ContentType;

    return-object v0
.end method
