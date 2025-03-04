.class public final Lmu/KMarkerFactory;
.super Ljava/lang/Object;
.source "KMarkerFactory.kt"


# static fields
.field public static final INSTANCE:Lmu/KMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lmu/KMarkerFactory;

    invoke-direct {v0}, Lmu/KMarkerFactory;-><init>()V

    sput-object v0, Lmu/KMarkerFactory;->INSTANCE:Lmu/KMarkerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lorg/slf4j/MarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object p1

    const-string v0, "MarkerFactory.getMarker(name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
