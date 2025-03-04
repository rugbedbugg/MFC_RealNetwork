.class public interface abstract annotation Lkotlinx/serialization/json/JsonClassDiscriminator;
.super Ljava/lang/Object;
.source "JsonAnnotations.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract discriminator()Ljava/lang/String;
.end method
