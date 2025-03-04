.class public final Lkotlin/reflect/jvm/internal/impl/types/extensions/TypeAttributeTranslators;
.super Ljava/lang/Object;
.source "TypeAttributeTranslators.kt"


# instance fields
.field private final translators:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "translators"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/extensions/TypeAttributeTranslators;->translators:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getTranslators()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/extensions/TypeAttributeTranslators;->translators:Ljava/util/List;

    return-object v0
.end method
