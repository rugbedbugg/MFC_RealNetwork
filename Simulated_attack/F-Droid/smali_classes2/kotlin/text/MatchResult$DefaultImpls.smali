.class public abstract Lkotlin/text/MatchResult$DefaultImpls;
.super Ljava/lang/Object;
.source "MatchResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/MatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getDestructured(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult$Destructured;
    .locals 1

    .line 80
    new-instance v0, Lkotlin/text/MatchResult$Destructured;

    invoke-direct {v0, p0}, Lkotlin/text/MatchResult$Destructured;-><init>(Lkotlin/text/MatchResult;)V

    return-object v0
.end method
