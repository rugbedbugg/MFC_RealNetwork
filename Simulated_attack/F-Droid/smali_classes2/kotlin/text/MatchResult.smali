.class public interface abstract Lkotlin/text/MatchResult;
.super Ljava/lang/Object;
.source "MatchResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/MatchResult$DefaultImpls;,
        Lkotlin/text/MatchResult$Destructured;
    }
.end annotation


# virtual methods
.method public abstract getDestructured()Lkotlin/text/MatchResult$Destructured;
.end method

.method public abstract getGroupValues()Ljava/util/List;
.end method

.method public abstract getGroups()Lkotlin/text/MatchGroupCollection;
.end method
