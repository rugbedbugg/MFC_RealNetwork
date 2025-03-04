.class final Lkotlinx/serialization/json/internal/JsonPath$Tombstone;
.super Ljava/lang/Object;
.source "JsonPath.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/JsonPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tombstone"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
