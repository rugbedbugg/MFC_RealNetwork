.class public Lkellinwood/logging/NullLoggerFactory;
.super Ljava/lang/Object;
.source "NullLoggerFactory.java"

# interfaces
.implements Lkellinwood/logging/LoggerFactory;


# static fields
.field static logger:Lkellinwood/logging/LoggerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lkellinwood/logging/NullLoggerFactory$1;

    invoke-direct {v0}, Lkellinwood/logging/NullLoggerFactory$1;-><init>()V

    sput-object v0, Lkellinwood/logging/NullLoggerFactory;->logger:Lkellinwood/logging/LoggerInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lkellinwood/logging/LoggerInterface;
    .locals 0

    .line 0
    sget-object p1, Lkellinwood/logging/NullLoggerFactory;->logger:Lkellinwood/logging/LoggerInterface;

    return-object p1
.end method
