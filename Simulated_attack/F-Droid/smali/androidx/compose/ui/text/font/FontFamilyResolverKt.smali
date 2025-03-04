.class public abstract Landroidx/compose/ui/text/font/FontFamilyResolverKt;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# static fields
.field private static final GlobalAsyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

.field private static final GlobalTypefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/TypefaceRequestCache;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalTypefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    .line 131
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalAsyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    return-void
.end method

.method public static final getGlobalAsyncTypefaceCache()Landroidx/compose/ui/text/font/AsyncTypefaceCache;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalAsyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    return-object v0
.end method

.method public static final getGlobalTypefaceRequestCache()Landroidx/compose/ui/text/font/TypefaceRequestCache;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalTypefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    return-object v0
.end method
