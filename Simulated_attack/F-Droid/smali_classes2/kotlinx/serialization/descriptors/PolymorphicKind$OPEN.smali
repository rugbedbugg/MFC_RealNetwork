.class public final Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;
.super Lkotlinx/serialization/descriptors/PolymorphicKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/PolymorphicKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OPEN"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/PolymorphicKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
