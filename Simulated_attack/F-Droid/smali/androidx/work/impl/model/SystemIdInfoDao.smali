.class public interface abstract Landroidx/work/impl/model/SystemIdInfoDao;
.super Ljava/lang/Object;
.source "SystemIdInfoDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/SystemIdInfoDao$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
.end method

.method public abstract getSystemIdInfo(Ljava/lang/String;I)Landroidx/work/impl/model/SystemIdInfo;
.end method

.method public abstract getWorkSpecIds()Ljava/util/List;
.end method

.method public abstract insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V
.end method

.method public abstract removeSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)V
.end method

.method public abstract removeSystemIdInfo(Ljava/lang/String;)V
.end method

.method public abstract removeSystemIdInfo(Ljava/lang/String;I)V
.end method
