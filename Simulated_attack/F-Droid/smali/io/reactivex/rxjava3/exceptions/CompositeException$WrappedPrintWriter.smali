.class final Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;
.super Lio/reactivex/rxjava3/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappedPrintWriter"
.end annotation


# instance fields
.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lio/reactivex/rxjava3/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method bridge synthetic append(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$PrintStreamOrWriter;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;->append(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method append(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    .line 268
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-object p0
.end method
